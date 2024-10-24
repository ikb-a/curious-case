theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_eq: "e = 7 - x" using h0 by (simp add: field_simps)
  have eq2_substituted: "2 * x + e = 3" using h1 e_eq by simp
  have "2 * x + (7 - x) = 3" using eq2_substituted by (metis e_eq)
  hence "x + 7 = 3" by simp
  hence "x = -4" by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  then show ?thesis using e_eq by (simp add: field_simps)
qed