lemma congruence_mod_6:
  fixes N :: nat
  assumes "N mod 8 = 5" and "N < 50"
  shows "\<exists>m. N = 24 * m + 21"