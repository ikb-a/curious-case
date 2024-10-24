theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e :: complex
  assumes h0 : "\<forall>(x::complex). x + e = 7"
    and h1 : "\<forall>(x::complex). 2 * x + e = 3"
  shows "\<exists>e x. e = 11 \<and> x = (-4)"
proof -
  obtain x where x_def: "x + e = 7" using h0 by blast
  obtain e where e_def: "2 * x + e = 3" using h1 by blast
  have e_expr: "e = 7 - x" using x_def by (metis add_diff_cancel_left' add_left_imp_eq diff_add_cancel diff_minus_eq_add h0 semiring_norm(5))
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr e_def by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  have e_value_final: "e = 7 + 4" using e_value by simp
  then show ?thesis using x_value_final e_value_final by auto
qed