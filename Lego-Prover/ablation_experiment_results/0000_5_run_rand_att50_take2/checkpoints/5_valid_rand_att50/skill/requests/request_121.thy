lemma simplify_congruence:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "8 * k + 5 mod 6 = 3"