lemma congruence_mod:
  fixes N k :: nat
  assumes "N mod 8 = 5" "N mod 6 = 3"
  shows "N = 8 * k + 5"