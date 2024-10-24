lemma solve_congruences:
  fixes k :: nat
  assumes "k mod 3 = 2"
  shows "\<exists>m. k = 3 * m + 2"
proof -
  obtain m where "k = 3 * m + (k mod 3)" using assms
    by (metis div_mod_decomp mult.commute nat_1_add_1)
  then have "k = 3 * m + 2" using assms by simp
  thus ?thesis by auto
qed