# mathd_numbertheory_101

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem mathd_numbertheory_101:
  "(17 * 18) mod 4 = (2::nat)"
proof -
  show ?thesis by auto
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_numbertheory_640.json`

Find the remainder when $91145 + 91146 + 91147 + 91148$ is divided by 4. Show that it is 2.
### Informal Proof:
Given four consecutive numbers 91145, 91146, 91147, and 91148, we want to find the remainder when their sum is divided by 4. We compute the remainders of each individual number when divided by 4 as follows: - 91145 % 4 = 1 - 91146 % 4 = 2 - 91147 % 4 = 3 - 91148 % 4 = 0  The sum of these remainders is 1 + 2 + 3 + 0 = 6. The remainder when 6 is divided by 4 is 2. Therefore, the remainder when the sum of the given numbers is divided by 4 is 2. This shows that the sum of four consecutive numbers is not necessarily divisible by 4, and the remainder can be any number from 0 to 3.
### Solution:
```isabelle
theorem mathd_numbertheory_640:
  "(91145+91146+91147+91148) mod 4 = (2::nat)"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_640
  imports Complex_Main
begin

(* helper lemma *)

lemma mathd_numbertheory_101: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  "(17 * 18) mod 4 = (2::nat)"
proof -
  show ?thesis by auto
qed

(* formal statement copy from the input *)
theorem mathd_numbertheory_640:
  "(91145+91146+91147+91148) mod 4 = (2::nat)"
  sledgehammer

end
```
