lemma express_N_mod_8_and_6:
  fixes N :: nat and k :: nat and m :: nat
  assumes "N = 8 * k + 5" and "N = 24 * m + 21"
  shows "N mod 8 = 5 \<and> N mod 6 = 3"
proof -
  have "N mod 8 = (8 * k + 5) mod 8" using assms(1) by simp
  moreover have "... = (8 * k mod 8 + 5 mod 8)" by auto
  moreover have "... = (0 + 5) mod 8" by auto
  moreover have "... = 5" by simp
  ultimately have "N mod 8 = 5" by simp
  have "N mod 6 = (24 * m + 21) mod 6" using assms(2) by simp
  moreover have "... = (24 * m mod 6 + 21 mod 6)" by presburger
  moreover have "... = (0 + 3)" by auto
  ultimately have "N mod 6 = 3" by simp
  thus "N mod 8 = 5 \<and> N mod 6 = 3" by (metis \<open>N mod 8 = 5\<close>)
qed