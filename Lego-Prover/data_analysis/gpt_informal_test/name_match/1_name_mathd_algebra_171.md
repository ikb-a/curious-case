# mathd_algebra_171

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem mathd_algebra_171:
  fixes f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = 5 * x + 4" 
  shows "f 1 = 9" "f 2 = 14" "f 3 = 19"
proof -
  have "f 1 = 5 * 1 + 4" "f 2 = 5 * 2 + 4" "f 3 = 5 * 3 + 4" using assms by auto
  thus "f 1 = 9" "f 2 = 14" "f 3 = 19" by auto
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_algebra_171.json`

Consider the function $f(x)=5x+4$.  What is $f(1)$? Show that it is 9.
### Informal Proof:
Given the function f(x) = 5x + 4, we want to find the value of f(1). To do this, we substitute x = 1 into the function: f(1) = 5(1) + 4. We then calculate the result of the expression: f(1) = 5 + 4. Finally, we simplify the expression to obtain the final result: f(1) = 9.
### Solution:
```isabelle
theorem mathd_algebra_171:
  fixes f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = 5 * x + 4" 
  shows "f 1 = 9"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_algebra_171 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  imports Complex_Main
begin

(* no helper function required in this theorem *)

(* formal statement copy from the input *)
theorem mathd_algebra_171: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = 5 * x + 4" 
  shows "f 1 = 9"
proof -
  (* Step 1: Given the function $f(x) = 5x + 4$ and we want to find the value of $f(1)$. *)
  have "f 1 = 5 * 1 + 4" using assms by auto
  (* Step 2: Substitute $x = 1$ into the function: $f(1) = 5(1) + 4$. *)
  (* Step 3: Calculate the result of the expression: $f(1) = 5 + 4$. *)
  (* Step 4: Simplify the expression to obtain the final result: $f(1) = 9$. *)
  also have "... = 9" by auto
  finally show ?thesis by auto
qed

end
```
