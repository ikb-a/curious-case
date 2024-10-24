theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x = -4 \<and> e = 11"
proof -
  obtain a where "x = a" by auto
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * a + (7 - a) = 3" using e_expr by (metis \<open>x = a\<close> h1 one_plus_BitM or_not_num_neg.simps(2) uminus_add_conv_diff)
  have eq_simplified: "a + 7 = 3" using eq_substituted by simp
  have a_value: "a = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value: "x = -4" by (metis \<open>x = a\<close> add.commute dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  have e_value: "e = 7 - (-4)" using e_expr x_value by simp
  then show ?thesis using x_value e_value by auto
qed