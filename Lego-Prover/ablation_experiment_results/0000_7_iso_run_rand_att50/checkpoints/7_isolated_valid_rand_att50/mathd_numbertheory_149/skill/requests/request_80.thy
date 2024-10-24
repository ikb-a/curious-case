lemma substitute_congruences:
  fixes k :: nat
  assumes "N = 8 * k + 5" and "N mod 6 = 3"
  shows "8 * k + 5 mod 6 = 3"