lemma cancel_div_for_inequalities_combined_evolved:
  fixes x a b c d :: real
  assumes "x > 0" "a * x + b < c * x" "d > 0"
  shows "d * (a + (b / x)) < d * c"
proof -
  have "x * (a + (b / x)) < c * x" using assms(1) assms(2) by sos
  hence "d * x * (a + (b / x)) < d * c * x" using assms(3) by (simp add: mult_less_cancel_left_pos)
  thus ?thesis using assms(1) by sos
qed