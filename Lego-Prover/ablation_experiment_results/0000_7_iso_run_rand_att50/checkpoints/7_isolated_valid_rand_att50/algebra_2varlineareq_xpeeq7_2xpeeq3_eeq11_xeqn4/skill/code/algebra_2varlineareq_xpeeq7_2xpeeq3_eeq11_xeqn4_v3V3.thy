theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v3:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<longleftrightarrow> x = -4"
proof -
  have "e = 7 - x" using h0 by (auto simp: field_simps)
  have "2 * x + (7 - x) = 3" using h1 by (metis \<open>e = 7 - x\<close>)
  hence "x + 7 = 3" by (simp add: algebra_simps)
  thus "e = 11 \<longleftrightarrow> x = -4" 
    by (smt (verit) algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2 h0 h1)
qed