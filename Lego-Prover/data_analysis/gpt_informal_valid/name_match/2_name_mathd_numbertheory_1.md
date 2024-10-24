# mathd_numbertheory_1

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 2

Lemma:
```isabelle
lemma mathd_numbertheory_1:
  "(1::nat)^2 mod 17 = (1::nat)"
proof -
  have "(1::nat)^2 mod 17 = 1^2 mod 17" by simp
  also have "... = 1 mod 17" by simp
  finally show ?thesis by simp
qed
```


## Usage 1 of 2:
### Problem:
Task name: `mathd_numbertheory_188.json`

Find the greatest common factor of 180 and 168. Show that it is 12.
### Informal Proof:
Let $a = 180$ and $b = 168$. The prime factorization of $a$ is $2^2 \times 3^2 \times 5$ and the prime factorization of $b$ is $2^3 \times 3 \times 7$. The common prime factors are $2^2$ and $3$. Therefore, the GCF of $a$ and $b$ is $2^2 \times 3 = 12$. The multiplication of the common factors gives the GCF because it constructs the largest number that can be "built" using the shared "building blocks" of the two numbers.
### Solution:
```isabelle
theorem mathd_numbertheory_188:
  "gcd 180 168 = (12::nat)"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_188 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  imports Complex_Main
begin

(* no helper function required in this theorem *)

(* formal statement copy from the input *)
theorem mathd_numbertheory_188: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  "gcd 180 168 = (12::nat)"
  by simp

end
```


## Usage 2 of 2:
### Problem:
Task name: `mathd_numbertheory_30.json`

Find the remainder when $$33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2$$is divided by 17. Show that it is 0.
### Informal Proof:
1. Compute the remainders of each of the numbers when divided by 17:    - 33818 % 17 = 1    - 33819 % 17 = 2    - 33820 % 17 = 3    - 33821 % 17 = 4    - 33822 % 17 = 5 2. Square the remainders and sum them up: $1^2 + 2^2 + 3^2 + 4^2 + 5^2 = 55$ 3. Compute the remainder of the sum when divided by 17: $55 \% 17 = 0$  Thus, the remainder when $33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2$ is divided by 17 is 0.
### Solution:
```isabelle
theorem mathd_numbertheory_30:
  "(33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) mod 17 = (0::nat)"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_30
  imports Complex_Main
begin

(* 
Step 1: Compute the remainders of each of the numbers when divided by 17:
   - $33818 \mod 17 = 1$
   - $33819 \mod 17 = 2$
   - $33820 \mod 17 = 3$
   - $33821 \mod 17 = 4$
   - $33822 \mod 17 = 5$
*)

lemma mathd_numbertheory_1: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  "(1::nat)^2 mod 17 = (1::nat)" "(2::nat)^2 mod 17 = (4::nat)" "(3::nat)^2 mod 17 = (9::nat)" "(4::nat)^2 mod 17 = (16::nat)" "(5::nat)^2 mod 17 = (8::nat)"
proof -
  have "(1::nat)^2 mod 17 = 1^2 mod 17" by simp
  also have "... = 1 mod 17" by simp
  finally show "(1::nat)^2 mod 17 = 1" by simp
  have "(2::nat)^2 mod 17 = 2^2 mod 17" by simp
  also have "... = 4 mod 17" by simp
  finally show "(2::nat)^2 mod 17 = 4" by simp
  have "(3::nat)^2 mod 17 = 3^2 mod 17" by simp
  also have "... = 9 mod 17" by simp
  finally show "(3::nat)^2 mod 17 = 9" by simp
  have "(4::nat)^2 mod 17 = 4^2 mod 17" by simp
  also have "... = 16 mod 17" by simp
  finally show "(4::nat)^2 mod 17 = 16" by simp
  have "(5::nat)^2 mod 17 = 5^2 mod 17" by simp
  also have "... = 8 mod 17" by simp
  finally show "(5::nat)^2 mod 17 = 8" by simp
qed

(* Step 2: Square the remainders and sum them up: $1^2 + 2^2 + 3^2 + 4^2 + 5^2 = 55$ *)
(* Step 3: Compute the remainder of the sum when divided by 17: $55 \mod 17 = 0$ *)
(* Step 4: Conclude that the remainder when $33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2$ is divided by 17 is 0. *)

theorem mathd_numbertheory_30:
  "(33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) mod 17 = (0::nat)"
  using mathd_numbertheory_1 by simp %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end
```


