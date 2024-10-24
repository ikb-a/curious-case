"""Utility Function for API Calls."""

import time
import openai
import random
from typing import List, Dict, Any, Union, Callable
from openai import OpenAI, APIConnectionError
import datetime
import traceback
import anthropic


def inference_connection_constructor(url: str, verbose: bool, model_name: str):
    """
    Return an object for getting API responses, depending on the URL.


    If url=="COST_ESTIMATE" then returns a dummy LLM inference
    engine that just tallies tokens being consumed.

    If url=="OPENAI" then it connects to OpenAI.

    If url=='ANTHROPIC" then it connects to Anthropic.

    Otherwise, it attempts to connect to a local server at url.
    """

    if url == "COST_ESTIMATE":
        return CostInferenceConnection(url=url, verbose=verbose, model_name=model_name)
    elif url == "OPENAI":
        return OpenAiInferenceConnection(verbose=verbose, model_name=model_name)
    elif url == "ANTHROPIC":
        return AnthropicInferenceConnection(verbose=verbose, model_name=model_name)
    else:
        return LocalInferenceConnection(url=url, verbose=verbose, model_name=model_name)


def default_prompt_splitter(prompt: str) -> List[Dict[str, str]]:
    """
    Split prompt into user & system prompt.
    By default, make the user prompt just the new problem
    (so, the system prompt is the high-level instruction and all
    examples before then)

    NOTE: This differs from what what was used for TroVE, they just
    directly passed in a user prompt with nothing else.
    """
    # Everything before the question is the system prompt
    DELIM = "**Question**"
    assert DELIM in prompt, prompt
    sys = prompt[: prompt.rfind(DELIM)]

    # The example question is split into a
    # user prompt and an assistant response.
    # Finally, the question to be answered is the
    # last user prompt.
    DELIM = "**Question**"
    assert DELIM in prompt, prompt
    q1_idx = prompt.find(DELIM)
    sys = prompt[:q1_idx]
    q1_end_idx = prompt.find("**Solution**", q1_idx)
    assert q1_end_idx != -1, (prompt, q1_idx)
    user1 = prompt[q1_idx:q1_end_idx]
    q1_sln_end_idx = prompt.find(DELIM, q1_end_idx)
    ass1 = prompt[q1_end_idx:q1_sln_end_idx]
    user2 = prompt[q1_sln_end_idx:]
    msg = [
        {"role": "system", "content": sys.strip()},
        {"role": "user", "content": user1.strip()},
        {"role": "assistant", "content": ass1.strip()},
        {"role": "user", "content": user2.strip()},
    ]
    # print(msg)
    return msg


class OpenAiInferenceConnection:
    def __init__(
        self,
        verbose: bool,
        model_name: str,
        prompt_splitter: Union[None, Callable[[str], List[Dict[str, str]]]] = None,
        key_path: str = "utils/keys.txt",
    ) -> None:
        """
        Connect to OpenAI, requesting model_name, and using the keys at key_path (stored in plaintext).

        Use prompt_splitter to convert the string input into a conversation.
        """
        if verbose:
            print(f"Creating connection to OpenAI", flush=True)
        self.verbose = verbose

        with open(key_path, "r") as infile:
            key = infile.readline().strip()

        self.client = OpenAI(api_key=key)

        self.model_name = model_name
        if prompt_splitter is None:
            self.prompt_splitter = default_prompt_splitter
        else:
            self.prompt_splitter = prompt_splitter

    def __call__(
        self,
        prompt: str,
        do_sample: bool,
        max_length: int,
        num_return_sequences: int,
        temperature: float,
        top_p: float,
        eos_token_id: Any,
        pad_token_id: Any,
        _retries: int = 0,
        _max_retries: int = 5,
    ) -> List[Dict[str, str]]:
        """
        Retries if has a connection error. Throws Runtime error if spends too long unsuccesfully retrying.
        """
        RETRY_INTERVAL = 2

        if not do_sample:
            raise NotImplementedError

        if _retries == _max_retries:
            raise RuntimeError(
                f"Exiting program, can't reach server after {RETRY_INTERVAL * _max_retries} minutes."
            )

        if self.verbose:
            print(f"{datetime.datetime.now()} Making API Call", flush=True)

        if _retries > 0:
            print(f"{datetime.datetime.now()} Retrying API Call", flush=True)

        try:
            message = self.prompt_splitter(prompt)
            response = self.client.chat.completions.create(
                model=self.model_name,
                max_tokens=max_length,
                n=num_return_sequences,
                temperature=temperature,
                top_p=top_p,
                messages=message,  # type: ignore
            )

        except APIConnectionError as e:
            print(
                f"{datetime.datetime.now()} Error in API call; will wait {RETRY_INTERVAL} minutes & retry"
            )
            traceback.print_exc()

            print(e, flush=True)
            time.sleep(60 * RETRY_INTERVAL)  #  Wait RETRY_INTERVAL minutes & retry
            return self.__call__(
                prompt,
                do_sample,
                max_length,
                num_return_sequences,
                temperature,
                top_p,
                eos_token_id,
                pad_token_id,
                _retries + 1,
                _max_retries,
            )

        if self.verbose:
            print("Got response", flush=True)
            # print(response, flush=True)
        results = [choice.message.content for choice in response.choices]
        assert all(x is not None for x in results), results
        return [{"generated_text": x} for x in results if x is not None]


class AnthropicInferenceConnection:
    def __init__(
        self,
        verbose: bool,
        model_name: str,
        prompt_splitter: Union[None, Callable[[str], List[Dict[str, str]]]] = None,
        key_path: str = "utils/keys_anthropic.txt",
    ) -> None:
        """
        Connect to Anthropic, requesting model_name, and using the keys at key_path (stored in plaintext).

        Use prompt_splitter to convert the string input into a conversation.
        """

        if verbose:
            print(f"Creating connection to Anthropic", flush=True)
        self.verbose = verbose

        with open(key_path, "r") as infile:
            key = infile.readline().strip()

        self.client = anthropic.Anthropic(api_key=key)

        self.model_name = model_name
        if prompt_splitter is None:
            self.prompt_splitter = default_prompt_splitter
        else:
            self.prompt_splitter = prompt_splitter

    def _call(self, kwargs, _retries=0, _max_retries=5):
        RETRY_INTERVAL = 2

        if _retries == _max_retries:
            raise RuntimeError(
                f"Exiting program, can't reach server after {RETRY_INTERVAL * _max_retries} minutes."
            )

        try:
            return self.client.messages.create(**kwargs)
        except anthropic.APIError as e:
            traceback.print_exc()
            print(e, flush=True)

            time.sleep(RETRY_INTERVAL * 60)
            return self._call(kwargs, _retries=_retries + 1)

    def __call__(
        self,
        prompt: str,
        do_sample: bool,
        max_length: int,
        num_return_sequences: int,
        temperature: float,
        top_p: float,
        eos_token_id: Any,
        pad_token_id: Any,
        _delay: int = 12,
    ) -> List[Dict[str, str]]:
        if not do_sample:
            raise NotImplementedError

        if self.verbose:
            print(f"{datetime.datetime.now()} Making API Call", flush=True)

        message = self.prompt_splitter(prompt)

        # Anthropic requires system role to be separate, do so need be.
        system = None
        if message[0]["role"] == "system":
            assert len(message) > 1
            system = message[0]["content"]
            del message[0]

        assert message[0]["role"] == "user"  # req'd by Claude

        kwargs = {
            "model": self.model_name,
            "max_tokens": max_length,
            # "n": num_return_sequences,  # Does not exist!!!
            "temperature": temperature,
            "top_p": top_p,
            "messages": message,
        }
        if system is not None:
            kwargs["system"] = system

        results = []
        for i in range(num_return_sequences):
            if i != 0:
                time.sleep(_delay)
            # TODO: catch & retry as needed
            msg = self._call(kwargs)

            # Convert the results into a string.
            # Check that Claude has only returned text.
            msg = msg.content
            assert all(x.type == "text" for x in msg), msg
            msg = "\n".join(x.text for x in msg)

            results.append(msg)

        if self.verbose:
            print("Got response", flush=True)
            # print(response, flush=True)
        assert all(x is not None for x in results), results
        return [{"generated_text": x} for x in results if x is not None]


class LocalInferenceConnection:
    def __init__(
        self,
        url: str,
        verbose: bool,
        model_name: str,
        prompt_splitter: Union[None, Callable[[str], str]] = None,
    ) -> None:
        if verbose:
            print(f"Creating connection to {url}", flush=True)
        self.verbose = verbose
        self.client = OpenAI(base_url=url, api_key="EMPTY")

        if "/" in model_name:
            model_name = model_name[model_name.rfind("/") + 1 :]

        self.model_name = f"/model-weights/{model_name}"

        if prompt_splitter is None:
            self.prompt_splitter = default_prompt_splitter
        else:
            self.prompt_splitter = prompt_splitter

    def __call__(
        self,
        prompt: str,
        do_sample: bool,
        max_length: int,
        num_return_sequences: int,
        temperature: float,
        top_p: float,
        eos_token_id: Any,
        pad_token_id: Any,
        _retries: int = 0,
        _max_retries: int = 10,
    ) -> List[Dict[str, str]]:
        """
        Retries if has a connection error. Throws Runtime error if spends too long unsuccesfully retrying.
        """
        RETRY_INTERVAL = 2

        if not do_sample:
            raise NotImplementedError

        if _retries == _max_retries:
            raise RuntimeError(
                f"Exiting program, can't reach server after {RETRY_INTERVAL * _max_retries} minutes."
            )

        if self.verbose:
            print(f"{datetime.datetime.now()} Making API Call", flush=True)

        if _retries > 0:
            print(f"{datetime.datetime.now()} Retrying API Call", flush=True)

        try:
            # Completion instead of chat completion
            response = self.client.completions.create(
                model=self.model_name,
                max_tokens=max_length,
                n=num_return_sequences,
                temperature=temperature,
                top_p=top_p,
                prompt=prompt,
            )
        except APIConnectionError as e:
            print(
                f"{datetime.datetime.now()} Error in API call; will wait {RETRY_INTERVAL} minutes & retry"
            )
            traceback.print_exc()

            print(e, flush=True)
            time.sleep(60 * RETRY_INTERVAL)  #  Wait RETRY_INTERVAL minutes & retry
            return self.__call__(
                prompt,
                do_sample,
                max_length,
                num_return_sequences,
                temperature,
                top_p,
                eos_token_id,
                pad_token_id,
                _retries + 1,
                _max_retries,
            )

        if self.verbose:
            print("Got response", flush=True)

        results = [choice.text for choice in response.choices]
        assert all(x is not None for x in results), results
        return [{"generated_text": x} for x in results if x is not None]


INPUT_COSTS = {"gpt-4": 0.03, "gpt-4o-mini": 0.00015, "count": 1000}
OUTPUT_COSTS = {"gpt-4": 0.06, "gpt-4o-mini": 0.0006, "count": 1000}
BILLING_UNIT = 1000
ENCODER = "cl100k_base"
DUMMY_RESPONSE: str = "```python\nprint(2+2)\n```"


class CostInferenceConnection:
    def __init__(self, url: str, verbose: bool, model_name: str) -> None:
        self.input_cost = INPUT_COSTS[model_name] / BILLING_UNIT
        self.output_cost = OUTPUT_COSTS[model_name] / BILLING_UNIT
        self.in_total_cost = 0
        self.out_total_cost = 0

        import tiktoken

        self.encoding = tiktoken.get_encoding(ENCODER)

    def __call__(
        self,
        prompt: str,
        do_sample: bool,
        max_length: int,
        num_return_sequences: int,
        temperature: float,
        top_p: float,
        eos_token_id: Any,
        pad_token_id: Any,
        _retries: int = 0,
        _max_retries: int = 10,
    ) -> List[Dict[str, str]]:

        self.in_total_cost += len(self.encoding.encode(prompt)) * self.input_cost
        self.out_total_cost += max_length * num_return_sequences * self.output_cost

        # f"{prompt}{DUMMY_RESPONSE}"}
        return [{"generated_text": DUMMY_RESPONSE}] * num_return_sequences


# ================================================================================
# Author's original code. Wasn't being called in their codebase. Kept
# for documentary reasons
# %% API Keys
key_pool = [line.strip() for line in open("./utils/keys.txt", "r")]
key_num = len(key_pool)
# openai.api_key = key_pool[0]
openai.api_key = random.sample(key_pool, 1)[0]

STOP_TOKENS = ["###", "===", "**"]


# %% Call API


def chat_api_wait(
    user_msg: str,
    system_msg: str,
    model_name: str = "gpt-3.5-turbo",
    total_iters: int = 1,
    sleep_interval: int = 30,
    temperature: float = 0.3,
    max_tokens: int = 1024,
    top_p: float = None,  # type: ignore
    n: int = 1,
) -> list[str] | None:
    i_iter = 0
    while i_iter < total_iters:
        i_iter += 1
        openai.api_key = random.sample(key_pool, 1)[0]
        try:
            response_list = openai.ChatCompletion.create(  # type: ignore
                model=model_name,
                messages=[
                    {"role": "system", "content": system_msg},
                    {"role": "user", "content": user_msg},
                ],
                temperature=temperature,
                max_tokens=max_tokens,
                top_p=top_p,
                n=n,
                # stop=STOP_TOKENS,
            )
            return [
                choice["message"]["content"].strip()
                for choice in response_list["choices"]
            ]
        except:
            time.sleep(i_iter * sleep_interval)
    # raise Exception("Iterations exhausted")
    return ["" for _ in range(n)]


# %% Cost Estimation

TOKENIZER_NAME = "cl100k_base"
COST_UNIT_SIZE = 1000
PRICE_MAP = {
    "gpt-3.5-turbo": {"input_price": 0.0015, "output_price": 0.002},
    "gpt-4": {"input_price": 0.03, "output_price": 0.06},
}


def calc_price(num_input_tokens: int, num_output_tokens: int, model_name: str):
    input_unit_price = PRICE_MAP[model_name]["input_price"]
    output_unit_price = PRICE_MAP[model_name]["output_price"]
    input_cost = input_unit_price * num_input_tokens / COST_UNIT_SIZE
    output_cost = output_unit_price * num_output_tokens / COST_UNIT_SIZE
    print(
        " | ".join(
            [
                f"Input Cost: {input_cost:.2f}",
                f"Output Cost: {output_cost:.2f}",
                f"Total Cost: {input_cost+output_cost:.2f}",
            ]
        )
        + "\n"
    )
