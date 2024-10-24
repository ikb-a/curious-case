theorem algebra_2varlinear_eqs:
  fixes x y :: complex
  assumes h0 : "x + y = 7"
    and h1 : "2 * x + y = 3"
  shows "y = 11 \<and> x = -4"
proof -
  have y_expr: "y = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using y_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have y_value: "y = 7 - (-4)" using y_expr x_value_final by simp
  have y_value_final: "y = 7 + 4" using y_value by simp
  then show ?thesis using x_value_final by auto
qed