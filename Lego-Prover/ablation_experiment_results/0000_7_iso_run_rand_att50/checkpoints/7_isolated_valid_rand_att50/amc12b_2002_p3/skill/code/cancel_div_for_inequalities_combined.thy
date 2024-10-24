lemma cancel_div_for_inequalities_combined:
  fixes x a b c d :: real
  assumes "x > 0" "a * x + b < c * x" "d > 0"
  shows "d * (a + (b / x)) < d * c"
proof -
  have "x * (a + (b / x)) < c * x" using assms(1) assms(2) by sos
  hence "d * x * (a + (b / x)) < d * c * x" using assms(3) by auto
  thus ?thesis by (metis assms(1) mult.assoc mult.commute mult_less_cancel_left_pos)
qed