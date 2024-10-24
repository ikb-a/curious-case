theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v3:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = (-4)"
proof -
  have eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "e = 3 - 2 * x" using h1 by (auto simp: field_simps)
  have "7 - x = 3 - 2 * x" using eq1 eq2 by simp
  then have "x + 7 = 3" by (auto simp: field_simps)
  then have "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral)
  then have "x = -4" by simp 
  from eq1 have "e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  then have "e = 7 + 4" by simp
  then show "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2 diff_minus_eq_add h0 h1)
qed