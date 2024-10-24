theorem algebra_2varlineareq_yxpeq7_2yxpeq3_eeq11_yeqn4:
  fixes y e :: complex
  assumes h0 : "y + e = 7"
    and h1 : "2 * y + e = 3"
  shows "y = -4 \<and> e = 11"
proof -
  have e_expr: "e = 7 - y" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * y + (7 - y) = 3" using e_expr h1 by simp
  have eq_simplified: "y + 7 = 3" using eq_substituted by simp
  have y_value: "y = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have y_value_final: "y = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr y_value_final by simp
  then show ?thesis using y_value_final by auto
qed