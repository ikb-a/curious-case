theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v4:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have "e = 7 - x" using h0 by (auto simp: field_simps)
  have "2 * x + (7 - x) = 3" using h1 by (metis \<open>e = 7 - x\<close>)
  then have "x + 7 = 3" by (simp add: algebra_simps)
  then have "x = -4" by (metis add.commute add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v3 diff_add_eq diff_minus_eq_add mult.commute mult_2_right verit_minus_simplify(4)) 
  then have "e = 7 - (-4)" by (metis \<open>e = 7 - x\<close>)
  then show "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v3 diff_minus_eq_add h0 h1)
qed