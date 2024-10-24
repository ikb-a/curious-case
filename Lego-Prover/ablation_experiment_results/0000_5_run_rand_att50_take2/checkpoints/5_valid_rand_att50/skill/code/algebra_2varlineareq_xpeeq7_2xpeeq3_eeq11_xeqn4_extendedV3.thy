theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 7 - x \<and> x = -4"
proof -
  have e_eq: "e = 7 - x" using h0 by (simp add: field_simps)
  then have eq2_substituted: "2 * x + (7 - x) = 3" using h1 by simp
  have "x + 7 = 3" using eq2_substituted by simp
  hence x_value: "x = -4" by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  have e_value: "e = 7 - (-4)" using e_eq x_value by simp
  thus ?thesis using x_value e_value by simp
qed