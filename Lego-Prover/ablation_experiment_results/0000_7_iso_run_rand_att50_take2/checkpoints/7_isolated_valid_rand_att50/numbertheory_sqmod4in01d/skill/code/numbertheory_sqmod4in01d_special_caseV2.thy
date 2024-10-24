lemma numbertheory_sqmod4in01d_special_case:
  fixes a :: int
  assumes "a mod 4 = 2"
  shows "a^2 mod 4 = 0"
proof -
  have "a^2 mod 4 = (2^2) mod 4" using assms by (smt (verit) power_mod)
  thus ?thesis by simp
qed