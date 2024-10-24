lemma cancel_div_for_inequalities_combined_extended:
  fixes x a b c d :: real
  assumes "x > 0" "d > 0" "a * x + b < c * x"
  shows "d * (a + (b / x)) < d * c"
proof -
  have "a * x + b < c * x" using assms(3) by simp
  hence "x * (a + (b / x)) < c * x" by (smt (z3) add_divide_eq_iff assms(1) mult_imp_div_pos_less mult_imp_le_div_pos nonzero_mult_div_cancel_left)
  thus ?thesis using assms(2) by (metis assms(1) mult.assoc mult.commute mult_less_cancel_left_pos)
qed