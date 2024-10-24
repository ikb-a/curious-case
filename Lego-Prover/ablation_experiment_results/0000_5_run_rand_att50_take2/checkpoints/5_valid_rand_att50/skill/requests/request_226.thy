lemma congruence_expression:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 8 = 5"