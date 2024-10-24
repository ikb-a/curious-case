# mathd_algebra_346

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem mathd_algebra_346:
  fixes f g :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = 2 * x - 3"
    and "\<forall> x. g x = x + 1"
  shows "g (f 5 - 1) = 7"
proof -
  have "f 5 = 2 * 5 - 3"
    using assms(1) by simp
  hence "f 5 = 7" by simp
  have "f 5 - 1 = 7 - 1" using `f 5 = 7` by simp
  hence "f 5 - 1 = 6" by simp
  have "g (f 5 - 1) = g 6"
    using `f 5 - 1 = 6` by simp
  hence "g (f 5 - 1) = 6 + 1" using assms(2) by simp
  hence "g (f 5 - 1) = 7" by simp
  then show ?thesis by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_algebra_346.json`

Let $f(x) = 2x-3$ and $g(x) = x+1$. What is the value of $g(f(5)-1)$? Show that it is 7.
### Informal Proof:
Given the functions $f(x) = 2x-3$ and $g(x) = x+1$, we are asked to find the value of $g(f(5)-1)$.  1. First, we evaluate $f(5) = 2*5 - 3 = 7$. 2. Then, we subtract 1 from $f(5)$ to get $7 - 1 = 6$. 3. Finally, we evaluate $g$ at this value to get $g(6) = 6 + 1 = 7$. Therefore, $g(f(5)-1) = 7$.
### Solution:
```isabelle
theorem mathd_algebra_346:
  fixes f g :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = 2 * x - 3"
    and "\<forall> x. g x = x + 1"
  shows "g (f 5 - 1) = 7"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_algebra_346 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  imports Complex_Main
begin

(* formal statement copy from the input *)
theorem mathd_algebra_346: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes f g :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = 2 * x - 3"
    and "\<forall> x. g x = x + 1"
  shows "g (f 5 - 1) = 7"
proof -
  (* Step 1: Given the functions $f(x) = 2x-3$ and $g(x) = x+1$, we are asked to find the value of $g(f(5)-1)$. *)
  
  (* Step 2: Evaluate $f(5) = 2*5 - 3 = 7$. *)
  have "f 5 = 2 * 5 - 3"
    using assms(1) by simp
  hence "f 5 = 7" by simp
  
  (* Step 3: Subtract 1 from $f(5)$ to get $7 - 1 = 6$. *)
  have "f 5 - 1 = 7 - 1" using `f 5 = 7` by simp
  hence "f 5 - 1 = 6" by simp
  
  (* Step 4: Evaluate $g$ at this value to get $g(6) = 6 + 1 = 7$. *)
  have "g (f 5 - 1) = g 6"
    using `f 5 - 1 = 6` by simp
  hence "g (f 5 - 1) = 6 + 1" using assms(2) by simp
  hence "g (f 5 - 1) = 7" by simp
  
  (* Step 5: Conclude that $g(f(5)-1) = 7$. *)
  then show ?thesis by simp
qed

end
```
