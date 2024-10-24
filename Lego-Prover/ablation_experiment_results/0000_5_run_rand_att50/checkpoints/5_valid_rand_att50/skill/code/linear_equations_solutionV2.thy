lemma linear_equations_solution:
  fixes a b c d :: complex
  assumes "a + b = 7" "2 * a + b = 3"
  shows "b = 11 \<and> a = (-4)"
proof -
  have b_expr: "b = 7 - a" using assms(1) by (auto simp: field_simps)
  have eq_substituted: "2 * a + (7 - a) = 3" using b_expr assms(2) by simp
  have eq_simplified: "a + 7 = 3" using eq_substituted by simp
  have a_value: "a = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have a_value_final: "a = -4" by simp
  have b_value: "b = 7 - (-4)" using b_expr a_value_final by simp
  have b_value_final: "b = 7 + 4" using b_value by simp
  thus "b = 11 \<and> a = (-4)" using a_value_final b_value_final by auto
qed