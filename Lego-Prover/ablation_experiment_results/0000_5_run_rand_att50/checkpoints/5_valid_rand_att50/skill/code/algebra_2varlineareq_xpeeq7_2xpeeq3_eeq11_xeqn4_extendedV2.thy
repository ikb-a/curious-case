theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e f :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
    and h2 : "f + e = 5"
  shows "e = 11 \<and> x = (-4) \<and> f = -6"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  have e_value_final: "e = 7 + 4" using e_value by simp
  then have e_final: "e = 11" using x_value_final by auto
  have f_expr: "f = 5 - e" using h2 by (auto simp: field_simps)
  then have f_value: "f = 5 - 11" using e_final by simp
  thus ?thesis using e_final x_value_final f_value by auto
qed