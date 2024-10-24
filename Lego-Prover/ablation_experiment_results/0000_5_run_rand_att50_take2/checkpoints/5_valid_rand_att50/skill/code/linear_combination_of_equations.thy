lemma linear_combination_of_equations:
  fixes a b :: complex
  assumes "a + b = 7" "2 * a + b = 3"
  shows "b = 11 \<and> a = -4"
proof -
  have b_eq: "b = 7 - a" using assms(1) by (auto simp: field_simps)
  have eq2_substituted: "2 * a + (7 - a) = 3" using assms(2) b_eq by simp
  have simplified_eq: "a + 7 = 3" using eq2_substituted by simp
  have a_value: "a = -4" using simplified_eq by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  have b_value: "b = 7 - (-4)" using b_eq a_value by simp
  show ?thesis using a_value b_value by simp
qed