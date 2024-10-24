lemma express_N_mod_6:
  fixes N :: nat and m :: nat
  assumes "N = 24 * m + 21"
  shows "N mod 6 = 3"
proof -
  have "N mod 6 = (24 * m + 21) mod 6" using assms by simp
  also have "... = (24 * m mod 6 + 21 mod 6)" by presburger
  also have "... = (0 + 3)" by auto
  finally show "N mod 6 = 3" by simp
qed