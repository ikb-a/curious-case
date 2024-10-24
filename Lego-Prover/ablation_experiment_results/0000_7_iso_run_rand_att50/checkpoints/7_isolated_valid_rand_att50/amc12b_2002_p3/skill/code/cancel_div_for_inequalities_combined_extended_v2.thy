lemma cancel_div_for_inequalities_combined_extended_v2:
  fixes x a b c d e :: real
  assumes "x > 0" "d > 0" "e > 0" "a * x + b < c * x"
  shows "d * (a + (b / x)) < d * c + e"
proof -
  have "a * x + b < c * x" using assms(4) by simp
  hence "x * (a + (b / x)) < c * x" by (smt (z3) add_divide_eq_iff assms(1) mult_imp_div_pos_less mult_imp_le_div_pos nonzero_mult_div_cancel_left)
  hence "d * (a + (b / x)) < d * c" using assms(2) by (metis assms(1) mult.assoc mult.commute mult_less_cancel_left_pos)
  thus "d * (a + (b / x)) < d * c + e" using assms(3) by auto
qed