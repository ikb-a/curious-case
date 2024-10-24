lemma substitute_congruence:
  fixes k :: nat
  assumes "N mod 8 = 5"
  shows "2 * (k mod 3) + 5 mod 6 = 3"