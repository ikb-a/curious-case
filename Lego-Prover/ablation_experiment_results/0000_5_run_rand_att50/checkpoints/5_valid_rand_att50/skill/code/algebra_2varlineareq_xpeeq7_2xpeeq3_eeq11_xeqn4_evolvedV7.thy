theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (simp add: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "2 * x - x + 7 = 3" using eq_substituted by simp
  have "x + 7 = 3" using eq_simplified by simp
  hence "x = 3 - 7" by (metis add.commute add_diff_cancel add_minus_cancel diff_add_eq eq_simplified group_cancel.add2 group_cancel.sub1 minus_add_cancel mult.commute mult_2_right numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  hence x_value: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value by simp
  hence e_value_final: "e = 7 + 4" by simp
  thus ?thesis using x_value e_value_final by auto
qed