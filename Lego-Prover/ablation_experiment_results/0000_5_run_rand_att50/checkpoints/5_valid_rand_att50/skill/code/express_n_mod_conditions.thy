lemma express_N_mod_conditions:
  fixes N :: nat and k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 8 = 5"
  using assms by simp