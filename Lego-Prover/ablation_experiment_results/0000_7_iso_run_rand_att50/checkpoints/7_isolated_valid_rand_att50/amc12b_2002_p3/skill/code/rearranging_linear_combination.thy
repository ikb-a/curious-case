lemma rearranging_linear_combination:
  fixes x a b c d :: real
  assumes "x > 0" "c = a + b / x"
  shows "a = c - b / x"
  using rearranging_equation[of x a b c] by (metis add.commute add_scale_eq_noteq assms(2) cancel_ab_semigroup_add_class.diff_right_commute diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0)