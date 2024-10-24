lemma mod_equivalence_6:
  fixes N :: nat and m :: nat
  assumes "N = 6 * m + 3"
  shows "N mod 6 = 3"
proof -
  have "N mod 6 = (6 * m + 3) mod 6" using assms by simp
  also have "... = (6 * m mod 6 + 3 mod 6)" by auto
  also have "... = (0 + 3)" by auto
  finally show "N mod 6 = 3" by simp
qed