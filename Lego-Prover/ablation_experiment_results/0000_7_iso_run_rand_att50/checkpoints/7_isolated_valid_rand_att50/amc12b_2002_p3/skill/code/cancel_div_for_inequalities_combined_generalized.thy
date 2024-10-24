lemma cancel_div_for_inequalities_combined_generalized:
  fixes x a b c d e :: real
  assumes "x > 0" "a * x + b < c * x" "d > 0" "e > 0"
  shows "d * (a + (b / x)) < d * c"
proof -
  have "x * (a + (b / x)) < c * x" using assms(1) assms(2) by sos
  hence "d * x * (a + (b / x)) < d * c * x" using assms(3) by (simp add: mult_less_cancel_left_pos)
  thus ?thesis by (smt (verit) assms(1) assms(2) assms(3) cancel_div_for_inequalities_combined_evolved)
qed