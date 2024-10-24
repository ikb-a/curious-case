theorem algebra_2varlineareq_extended:
  fixes x y e :: complex
  assumes h0: "x + y = 7"
    and h1: "2 * x + y = 3"
    and h2: "x - y = 4"
  shows "e = 11 \<and> x = -4 \<and> y = 11"
proof -
  have e_eq: "y = 7 - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  have simplified_eq: "x + 7 = 3" using substitution by simp
  have x_value: "x = 3 - 7" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_result: "x = -4" by simp
  have y_value: "y = 7 - (-4)" using e_eq x_result by simp
  then have y_result: "y = 11" by simp
  have e_value: "e = y + 4" using h2 by (metis BitM_inc_eq ab_group_add_class.ab_diff_conv_add_uminus add.commute add_diff_cancel_left' add_minus_cancel dbl_def dbl_simps(5) diff_add_cancel inc.simps(1) inc.simps(2) inc.simps(3) minus_diff_eq numeral_neq_neg_numeral semiring_norm(27) uminus_add_conv_diff verit_minus_simplify(4) x_result y_result)
  then have e_result: "e = 11" using y_result by (metis ab_group_add_class.ab_diff_conv_add_uminus add_diff_cancel_left' add_minus_cancel dbl_def dbl_simps(5) diff_add_cancel h2 minus_add_cancel minus_diff_eq numeral_neq_neg_numeral semiring_norm(27) semiring_norm(28) uminus_add_conv_diff verit_minus_simplify(4) x_result)
  show ?thesis using x_result y_result e_result by auto
qed