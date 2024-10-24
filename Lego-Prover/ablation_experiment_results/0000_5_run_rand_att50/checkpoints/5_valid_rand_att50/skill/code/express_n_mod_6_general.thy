lemma express_N_mod_6_general:
  fixes N :: nat and m :: nat
  assumes "N = r * m + s" and "r dvd s"
  shows "N mod r = s mod r"
proof -
  have "N mod r = (r * m + s) mod r" using assms by simp
  also have "... = (r * m mod r + s mod r)" by auto
  also have "... = (0 + s mod r)" by auto
  finally show "N mod r = s mod r" by simp
qed