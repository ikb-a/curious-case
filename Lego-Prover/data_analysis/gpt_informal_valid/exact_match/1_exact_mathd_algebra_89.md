# mathd_algebra_89, mathd_algebra_89'

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem mathd_algebra_89:
  fixes b :: real
  assumes h0 : "b\<noteq>0"
  shows "(7 * b^3)^2 * 1/((4 * b^2)^3) = 49 / 64"
proof -
  have c0: "(7 * b^3)^2 = 49 * b^6"
    by auto
  have c1: "1/((4 * b^2)^3) = 1/(4^3 * b^6)"
    by auto
  have c2: "1/(4^3 * b^6) = 1/(64 * b^6)"
    by auto
  from c0 c1 c2 have "(7 * b^3)^2 * 1/((4 * b^2)^3) = (49 * b^6) * (1/(64 * b^6))"
    by auto
  also have "... = 49 / 64" using assms by auto
  finally show ?thesis .
qed

lemma mathd_algebra_89':
  fixes b :: real
  assumes "b\<noteq>0"
  shows "(7 * b^3)^2 / ((4 * b^2)^3) = 49 / 64"
proof -
  have "(7 * b^3)^2 / ((4 * b^2)^3) = (49 * b^6) / (64 * b^6)"
    by (simp add: power_divide)
  also have "... = 49 / 64" using assms by auto
  finally show ?thesis .
qed
```


## Usage 1 of 1:
### Problem:
Task name: `amc12a_2010_p11.json`

The solution of the equation $7^{x+7} = 8^x$ can be expressed in the form $x = \log_b 7^7$. What is $b$?  $\textbf{(A)}\ \frac{7}{15} \qquad \textbf{(B)}\ \frac{7}{8} \qquad \textbf{(C)}\ \frac{8}{7} \qquad \textbf{(D)}\ \frac{15}{8} \qquad \textbf{(E)}\ \frac{15}{7}$ Show that it is \textbf{(C)}\ \frac{8}{7}.
### Informal Proof:
Given the equation $7^{x+7} = 8^x$, we can rewrite it as $7^x \cdot 7^7 = 8^x$. Taking the logarithm of both sides with base $b$, we get $x \cdot \log_b 7 + 7 \cdot \log_b 7 = x \cdot \log_b 8$. Subtracting $x \cdot \log_b 7$ from both sides, we get $7 \cdot \log_b 7 = x \cdot \log_b 8 - x \cdot \log_b 7$. Factoring out $x$ on the right side, we get $7 \cdot \log_b 7 = x \cdot (\log_b 8 - \log_b 7)$. Dividing both sides by $\log_b 8 - \log_b 7$, we get $x = \frac{7 \cdot \log_b 7}{\log_b 8 - \log_b 7}$. Comparing this with the given form $x = \log_b 7^7$, we see that $\log_b 8 - \log_b 7$ must be equal to $1$ in order for the two expressions for $x$ to be equal. Therefore, $b$ must be equal to $\frac{8}{7}$.
### Solution:
```isabelle
theorem amc12a_2010_p11:
  fixes x b :: real
  assumes "0 < b"
    and "7 powr (x + 7) = 8 powr x"
    and "x = ln (7^7) / ln b" 
  shows "b = 8 / 7"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory amc12a_2010_p11
  imports Complex_Main "HOL-Library.Sum_of_Squares"
begin

(* useful skill 1 *)
lemma logarithmic_equation_solving:
  fixes a b :: real
  assumes "a > 0" "b > 0" "a \<noteq> 1" "b \<noteq> 1"
  shows "(log a b = x) \<longleftrightarrow> (a^x = b)"
  by (smt (verit) assms(1) assms(2) assms(3) log_pow_cancel powr_log_cancel powr_realpow)

(* useful skill 4 *)
lemma cal_log_value:
  assumes "a > 0" and "a ≠ 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
  by (metis assms(1) assms(2) assms(3) assms(4) powr_log_cancel powr_realpow)

(* useful skill 6 *)
theorem mathd_algebra_89: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes b :: real
  assumes h0 : "b\<noteq>0"
  shows "(7 * b^3)^2 * 1/((4 * b^2)^3) = 49 / 64"
proof -
  have c0: "(7 * b^3)^2 = 49 * b^6"
    by auto
  have c1: "1/((4 * b^2)^3) = 1/(4^3 * b^6)"
    by auto
  have c2: "1/(4^3 * b^6) = 1/(64 * b^6)"
    by auto
  from c0 c1 c2 have "(7 * b^3)^2 * 1/((4 * b^2)^3) = (49 * b^6) * (1/(64 * b^6))"
    by auto
  also have "... = 49 / 64" using assms by auto
  finally show ?thesis .
qed

lemma mathd_algebra_89': %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes b :: real
  assumes "b\<noteq>0"
  shows "(7 * b^3)^2 / ((4 * b^2)^3) = 49 / 64"
proof -
  have "(7 * b^3)^2 / ((4 * b^2)^3) = (49 * b^6) / (64 * b^6)"
    by (simp add: power_divide)
  also have "... = 49 / 64" using assms by auto
  finally show ?thesis .
qed

(* formal statement copy from the input *)
theorem amc12a_2010_p11:
  fixes x b :: real
  assumes "0 < b"
    and "7 powr (x + 7) = 8 powr x"
    and "x = ln (7^7) / ln b" 
  shows "b = 8 / 7"
proof -
  (* Step 1: Rewrite the given equation $7^{x+7} = 8^x$ as $7^x \cdot 7^7 = 8^x$. *)
  have "(7 powr x) * (7 powr 7) = 8 powr x"
    using assms(2) by simp

  (* Step 2: Take the logarithm of both sides with base $b$, resulting in $x \cdot \log_b 7 + 7 \cdot \log_b 7 = x \cdot \log_b 8$. *)
  then have "log b ((7 powr x) * (7 powr 7)) = log b (8 powr x)"
    by simp

  (* Step 3: Subtract $x \cdot \log_b 7$ from both sides to obtain $7 \cdot \log_b 7 = x \cdot \log_b 8 - x \cdot \log_b 7$. *)
  then have "log b ((7 powr x) * (7 powr 7)) - (x * log b 7) = log b (8 powr x) - (x * log b 7)"
    by simp

  (* Step 4: Factor out $x$ on the right side to get $7 \cdot \log_b 7 = x \cdot (\log_b 8 - \log_b 7)$. *)
  then have "(log b ((7 powr x) * (7 powr 7)) - (x * log b 7)) = x * (log b 8 - log b 7)"
    by (simp add: algebra_simps)

  (* Step 5: Divide both sides by $\log_b 8 - \log_b 7$ to find $x = \frac{7 \cdot \log_b 7}{\log_b 8 - \log_b 7}$. *)
  then have "(log b ((7 powr x) * (7 powr 7)) - (x * log b 7))/(log b 8 - log b 7) = x"
    using assms(1) assms(3) by (simp add: field_simps)

  (* Step 6: Compare the expression for $x$ with the given form $x = \log_b 7^7$. *)
  then have "(log b ((7 powr x) * (7 powr 7)) - (x * log b 7))/(log b 8 - log b 7) = (log b (7^7))"
    using assms(1) assms(3) by simp

  (* Step 7: Conclude that $\log_b 8 - \log_b 7$ must be equal to $1$ for the two expressions for $x$ to be equal. *)
  then have "log b 8 - log b 7 = 1"
    by (metis assms(1) assms(3) divide_eq_1_iff minus_diff_eq)

  (* Step 8: Therefore, $b$ must be equal to $\frac{8}{7}$. *)
  then show "b = 8 / 7"
    by (metis assms(1) assms(3) divide_eq_iff divide_simps ln_exp ln_mult ln_powr ln_realpow)

qed

end
```
