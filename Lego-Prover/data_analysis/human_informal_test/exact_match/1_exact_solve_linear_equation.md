# solve_linear_equation

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma solve_linear_equation:
  fixes x a b :: real
  assumes "a \<noteq> 0"
  shows "a * x = b \<longleftrightarrow> x = b / a"
proof
  assume "a * x = b"
  then have "x = b / a" using assms by auto
  thus "x = b / a" .
next
  assume "x = b / a"
  then have "a * x = a * (b / a)" by simp
  thus "a * x = b" using assms by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `algebra_absxm1pabsxpabsxp1eqxp2_0leqxleq1.json`

Show that for any real number $x$, if $|x-1| + |x| + |x+1| = x + 2$, then $0 \leq x \leq 1$.
### Informal Proof:
If $x \leq -1$, then $|x-1| + |x| + |x+1| = -(x-1) - x - (x + 1) = -3x$. So, $-3x = x+2$ and $x=-\frac{1}{2}$, which is a contradiction. If $-1 < x < 0$, then $|x-1| + |x| + |x+1| = -(x-1) - x + (x + 1) = 2-x$. So, $2-x = x+2$ and $x=0$, which is a contradiction. If $x > 1$, then $|x-1| + |x| + |x+1| = x-1 + x + (x + 1) = 3x$. So, $3x = x+2$ and $x=1$, which is a contradiction. As a result, the only possible values for x are between 0 and 1 and 0 $\leq$ x $\leq$ 1.
### Solution:
```isabelle
theorem algebra_absxm1pabsxpabsxp1eqxp2_0leqxleq1:
  fixes x ::real
  assumes "abs (x - 1) + abs x + abs (x + 1) = x + 2" 
  shows "0 \<le> x \<and> x \<le> 1"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory algebra_absxm1pabsxpabsxp1eqxp2_0leqxleq1
  imports Complex_Main
begin

(* lemma 1: a lemma for rewriting absolute value equations *)
lemma solve_absolute_value_equation:
  fixes x :: real
  shows "abs (x - 1 / x) = 1 \<longleftrightarrow> (x - 1 / x = 1 \<or> x - 1 / x = -1)"
  by auto

(* lemma 2: a lemma for solving linear equations *)
lemma solve_linear_equation: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes x a b :: real
  assumes "a \<noteq> 0"
  shows "a * x = b \<longleftrightarrow> x = b / a"
proof
  assume "a * x = b"
  then have "x = b / a" using assms by auto
  thus "x = b / a" .
next
  assume "x = b / a"
  then have "a * x = a * (b / a)" by simp
  thus "a * x = b" using assms by simp
qed

(* formal statement copy from the input *)
theorem algebra_absxm1pabsxpabsxp1eqxp2_0leqxleq1:
  fixes x ::real
  assumes "abs (x - 1) + abs x + abs (x + 1) = x + 2" 
  shows "0 \<le> x \<and> x \<le> 1"
proof -
  (* Step 1: Assume $x \leq -1$ and simplify the equation $|x-1| + |x| + |x+1| = x + 2$ to get $-3x = x + 2$.
     Solve for $x$ and show that it leads to a contradiction. *)
  {
    assume a1: "x \<le> -1"
    have "abs (x - 1) + abs x + abs (x + 1) = -3 * x"
      using a1 by auto
    then have "(-3) * x = x + 2"
      using assms by auto
    then have "- 3 * x - x = 2"
      by (metis diff_minus_eq_add diff_minus_eq_add minus_minus minus_mult_right mult_minus1_right)
    then have "-4 * x = 2"
      by auto
    then have "x = -1/2"
      by auto
    then have "x > -1"
      by auto
    then have False
      using a1 by auto
  }
  then have "\<not> x \<le> -1"
    by auto
  then have a2: "x > -1"
    by auto

  (* Step 2: Assume $-1 < x < 0$ and simplify the equation $|x-1| + |x| + |x+1| = x + 2$ to get $2 - x = x + 2$.
     Solve for $x$ and show that it leads to a contradiction. *)
  {
    assume a3: "-1 < x" and a4: "x < 0"
    have "abs (x - 1) + abs x + abs (x + 1) = 2 - x"
      using a3 a4 by auto
    then have "2 - x = x + 2"
      using assms by auto
    then have "2 - x - x = 2"
      by auto
    then have "2 - 2 * x = 2"
      by auto
    then have "2 * x = 0"
      by auto
    then have "x = 0"
      by auto
    then have "x > 0"
      by auto
    then have False
      using a4 by auto
  }
  then have "\<not> (-1 < x \<and> x < 0)"
    by auto
  then have a5: "\<not> -1 < x \<or> \<not> x < 0"
    by auto

  (* Step 3: Assume $x > 1$ and simplify the equation $|x-1| + |x| + |x+1| = x + 2$ to get $3x = x + 2$.
     Solve for $x$ and show that it leads to a contradiction. *)
  {
    assume a6: "x > 1"
    have "abs (x - 1) + abs x + abs (x + 1) = 3 * x"
      using a6 by auto
    then have "3 * x = x + 2"
      using assms by auto
    then have "3 * x - x = 2"
      by auto
    then have "2 * x = 2"
      by auto
    then have "x = 1"
      by auto
    then have "x < 1"
      by auto
    then have False
      using a6 by auto
  }
  then have "\<not> x > 1"
    by auto
  then have a7: "x \<le> 1"
    by auto

  (* Step 4: Conclude that the only possible values for $x$ are between 0 and 1, i.e., $0 \leq x \leq 1$. *)
  from a2 a5 a7 show "0 \<le> x \<and> x \<le> 1"
    by auto
qed

end
```
