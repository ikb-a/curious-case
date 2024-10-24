lemma cancel_div_for_inequalities_reverse_stronger:
  fixes x a b c d :: real
  assumes "x > 0" "0 < d" "a * x + b < c * x + d"
  shows "a + b / x < c + d / x"
proof -
  have "x * (a + b / x) < c * x + d" using assms(1) assms(2) assms(3) by sos
  thus "a + b / x < c + d / x" by (smt (z3) add_divide_eq_iff assms(1) assms(3) divide_strict_right_mono)
qed