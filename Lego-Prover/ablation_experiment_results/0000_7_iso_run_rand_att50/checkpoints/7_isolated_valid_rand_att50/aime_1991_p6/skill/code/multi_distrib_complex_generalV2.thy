lemma multi_distrib_complex_general:
  fixes z1 z2 z3 z4 :: complex
  assumes "z1 = a + b" and "z2 = c + d"
  shows "z1 * z2 = a * c + a * d + b * c + b * d"
proof -
  obtain a b c d where "z1 = a + b" and "z2 = c + d" using assms by auto
  have "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
    by (simp add: distrib_left distrib_right)
  thus ?thesis by (metis add.commute add.left_commute assms(1) assms(2) combine_common_factor distrib_right group_cancel.add1 mult.commute)
qed