theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_modified:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  hence "2 * x + (7 - x) = 3" using h1 by simp
  thus ?thesis
  proof -
    have eq_simplified: "x + 7 = 3" using `2 * x + (7 - x) = 3` by simp
    have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
    then have x_value_final: "x = -4" by simp
    have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
    then show ?thesis using x_value_final by auto
  qed
qed