theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = (-4)"
proof -
  from h0 obtain e' where e_expr: "e' = 7 - x" by auto
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by (metis add.commute add_diff_cancel dbl_def dbl_inc_simps(3) dbl_simps(3) h0 mult_2)
  then have eq_simplified: "x + 7 = 3" by simp
  have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by (metis add.commute add_diff_cancel diff_minus_eq_add h0 one_plus_BitM or_not_num_neg.simps(2))
  have e_value_final: "e = 7 + 4" using e_value by simp
  thus ?thesis using x_value_final by auto
qed