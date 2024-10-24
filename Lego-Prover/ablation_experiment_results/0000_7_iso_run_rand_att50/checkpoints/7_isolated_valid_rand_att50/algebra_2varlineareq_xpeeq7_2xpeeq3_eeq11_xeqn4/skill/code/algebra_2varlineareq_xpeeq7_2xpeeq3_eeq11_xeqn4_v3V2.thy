theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v3:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + e = 3" using h1 by simp
  have "2 * x + (7 - x) = 3" using eq1 eq2 by simp
  have "x + 7 = 3" by (smt (verit) h0 h1 left_add_twice)
  then have "x = -4" by (metis add.commute add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2 diff_add_eq diff_minus_eq_add mult.commute mult_2_right verit_minus_simplify(4)) 
  from eq1 have "e = 7 - (-4)" using \<open>x = -4\<close> by auto
  then have "e = 7 + 4" by simp
  thus "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2 diff_minus_eq_add h0 h1)
qed