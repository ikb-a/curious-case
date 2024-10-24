# quadratic_discriminant

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma quadratic_discriminant:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  and "b^2 \<ge> 4*a*c"
  shows "b^2 - 4*a*c \<ge> 0"
proof -
  have "0 \<le> (b^2 - 4*a*c)" using assms by simp
  then show ?thesis by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_algebra_28.json`

What is the largest number $c$ such that $2x^2+5x+c=0$ has at least one real solution? Express your answer as a common fraction. Show that it is \frac{25}{8}.
### Informal Proof:
In order for this quadratic to have at least one real solution, its discriminant must be non-negative. In other words, $b^2 - 4ac = 5^2 - 4(2)(c) = 25 - 8c \ge 0$. Rearranging, we have $25 \ge 8c$. Dividing by 8, we have $25/8 \ge c$. Therefore, the largest possible value of $c$ such that this quadratic has a real solution is $\frac{25}{8}$.
### Solution:
```isabelle
theorem mathd_algebra_28:
  fixes c :: real
    and f :: "real \<Rightarrow> real"
  assumes h0 : "\<forall>x. f x = 2 * x^2 + 5 * x + c"
    and h1 : "\<exists>x. f x \<le> 0"
  shows "c \<le> 25/8"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_algebra_28
  imports Complex_Main
begin

(* lemma 1. A lemma that shows the discriminant property of a quadratic equation will be helpful for step 1 *)
lemma quadratic_discriminant: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes a b c :: real
  assumes "a \<noteq> 0"
  and "b^2 \<ge> 4*a*c"
  shows "b^2 - 4*a*c \<ge> 0"
proof -
  have "0 \<le> (b^2 - 4*a*c)" using assms by simp
  then show ?thesis by simp
qed

(* formal statement copy from the input *)
theorem mathd_algebra_28:
  fixes c :: real
    and f :: "real \<Rightarrow> real"
  assumes h0 : "\<forall>x. f x = 2 * x^2 + 5 * x + c"
    and h1 : "\<exists>x. f x \<le> 0"
  shows "c \<le> 25/8"
proof -
  (* Step 1: Recognize that in order for the quadratic $2x^2 + 5x + c = 0$ to have at least one real solution, its discriminant must be non-negative. *)
  have "\<exists>x. 2 * x^2 + 5 * x + c \<le> 0" using h1 h0 by auto
  then obtain x where "2 * x^2 + 5 * x + c \<le> 0" by auto
  then have "5^2 - 4*2*c \<ge> 0" using quadratic_discriminant[of "2" "5" "c"] by auto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  then have "25 - 8*c \<ge> 0" by auto
  (* Step 6: Conclude that the largest possible value of $c$ such that the quadratic has a real solution is $\frac{25}{8}$. *)
  then have "c \<le> 25/8" by auto
  then show ?thesis by auto
qed

end
```
