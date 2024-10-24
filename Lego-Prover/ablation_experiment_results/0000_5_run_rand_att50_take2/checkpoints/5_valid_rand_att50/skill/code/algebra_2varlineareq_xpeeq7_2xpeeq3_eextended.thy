theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eextended:
  fixes x y e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + y = 3"
    and h2 : "y = e"  
  shows "e = 11 \<and> x = (-4) \<and> y = 11"
proof -
  have e_eq: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (7 - x) = 3" using h1 e_eq by (metis h2 one_plus_BitM or_not_num_neg.simps(2) uminus_add_conv_diff)
  have simplified_eq: "x + 7 = 3" using eq2_substituted by simp
  have x_value: "x = -4" using simplified_eq by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  have e_value: "e = 7 - (-4)" using e_eq x_value by simp
  have y_value: "y = e" using h2 e_value by simp
  show ?thesis using x_value e_value y_value by simp
qed