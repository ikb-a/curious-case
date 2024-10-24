"""
As the sandbox has no internet access, we must first download the huggingface files to the cache.
Slow as the model will be loaded into memory.
"""

import transformers
import argparse
import torch
from transformers import AutoTokenizer

# codellama/CodeLlama-13b-Instruct-hf
parser = argparse.ArgumentParser()
parser.add_argument(
    "--model_name", type=str, default="codellama/CodeLlama-7b-Instruct-hf"
)

args = parser.parse_args()

tokenizer = AutoTokenizer.from_pretrained(args.model_name)
# configure generation pipeline
pipeline = transformers.pipeline(
    "text-generation",
    model=args.model_name,
    torch_dtype=torch.float16,
    device_map="auto",
)
