theorem algebra_2varlineareq_generalized:
  fixes x y :: complex
  assumes h0 : "x + y = a"
    and h1 : "2 * x + y = b"
  shows "y = b - 2 * (a - y) \<and> x = (a - y)"
proof -
  have y_eq: "y = a - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (a - x) = b" using y_eq h1 by simp
  have simplified_eq: "x + a = b" using substitution by simp
  have x_value: "x = b - a" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel)
  then have x_result: "x = (a - y)" by (metis add.commute add_scale_eq_noteq cancel_ab_semigroup_add_class.diff_right_commute diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0 h0 mult_cancel_right2 mult_delta_right zero_neq_one)
  have y_value: "y = a - x" using y_eq by simp
  show ?thesis using y_value x_result by (metis add.commute add_right_imp_eq cancel_ab_semigroup_add_class.diff_right_commute diff_add_cancel diff_add_eq_diff_diff_swap diff_diff_eq2 diff_eq_diff_eq group_cancel.sub1 mult.commute mult_2_right simplified_eq)
qed