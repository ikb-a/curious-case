theorem algebra_2varlineareq_multiple_solutions:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = (-4)"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "2 * x - x + 7 = 3" using eq_substituted by simp
  have final_equation: "x + 7 = 3" by (metis add.commute add_diff_cancel dbl_def dbl_inc_simps(3) dbl_simps(3) eq_simplified h0 mult_2)
  have x_value: "x = 3 - 7" using final_equation by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  then have e_value_final: "e = 7 + 4" using e_value by simp
  thus ?thesis using x_value_final by auto
qed