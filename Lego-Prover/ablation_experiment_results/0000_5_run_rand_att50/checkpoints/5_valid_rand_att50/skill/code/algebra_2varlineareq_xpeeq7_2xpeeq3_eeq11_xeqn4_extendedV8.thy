theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e :: "'a :: ring_1"
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e=11 \<and> x= (-4)"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by (metis add.commute add_diff_cancel_left add_diff_cancel_right add_left_imp_eq add_minus_cancel add_right_imp_eq diff_conv_add_uminus group_cancel.add1 group_cancel.add2 group_cancel.sub1 h0 h1 mult_2 mult_minus_right numeral_plus_one one_add_one one_plus_numeral semiring_norm(3) semiring_norm(5) uminus_add_conv_diff)
  have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  have e_value_final: "e = 7 + 4" using e_value by simp
  then show ?thesis using x_value_final by auto
qed