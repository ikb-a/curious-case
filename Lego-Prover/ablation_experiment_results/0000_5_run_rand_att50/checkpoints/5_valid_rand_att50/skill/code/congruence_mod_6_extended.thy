lemma congruence_mod_6_extended:
  fixes N :: nat
  assumes "N mod 6 = 3"
  shows "\<exists>m. N = 6 * m + 3"
  using congruence_mod_n[of N 6 3] assms by simp