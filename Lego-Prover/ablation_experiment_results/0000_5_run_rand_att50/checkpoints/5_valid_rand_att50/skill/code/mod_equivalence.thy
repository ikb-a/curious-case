lemma mod_equivalence:
  fixes N :: nat and k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 8 = 5"
proof -
  have "N mod 8 = (8 * k + 5) mod 8" using assms by simp
  also have "... = (8 * k mod 8 + 5 mod 8)" by auto
  also have "... = (0 + 5) mod 8" by auto
  also have "... = 5" by simp
  finally show "N mod 8 = 5" by simp
qed