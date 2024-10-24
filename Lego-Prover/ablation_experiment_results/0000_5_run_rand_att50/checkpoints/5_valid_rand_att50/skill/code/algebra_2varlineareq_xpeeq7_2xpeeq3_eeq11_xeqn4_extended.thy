theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e z :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
    and h2 : "z = 2 * x + e + 5"
  shows "e = 11 \<and> x = (-4) \<and> z = 8"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  have e_value_final: "e = 7 + 4" using e_value by simp
  then have "e = 11" using e_value_final by simp
  have z_value: "z = 2 * (-4) + e + 5" using h2 x_value_final e_value_final by simp
  then have "z = -8 + 11 + 5" by (metis \<open>e = 11\<close> add.commute add.inverse_inverse add_diff_cancel_left' add_diff_cancel_right' dbl_def dbl_inc_def dbl_inc_simps(3) dbl_inc_simps(5) dbl_simps(3) dbl_simps(5) diff_add_cancel diff_conv_add_uminus diff_minus_eq_add h1 h2 minus_diff_eq mult_2 uminus_add_conv_diff x_value_final)
  then show ?thesis using x_value_final e_value_final by auto
qed