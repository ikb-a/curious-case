lemma cancel_div_for_inequalities_reverse_extended:
  fixes x a b c d :: real
  assumes "x > 0" "a * x + b < c * x" "d > 0"
  shows "a + b / x < c"
proof -
  have "x * (a + b / x) < c * x" using assms(1) assms(2) by sos
  thus "a + b / x < c" by (metis assms(1) mult.commute mult_less_cancel_left_disj order_less_imp_not_less)
qed