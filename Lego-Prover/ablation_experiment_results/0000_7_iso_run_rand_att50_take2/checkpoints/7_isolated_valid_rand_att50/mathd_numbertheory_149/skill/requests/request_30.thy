lemma congruence_expression:
  fixes N :: nat
  assumes "N mod 8 = 5" "N mod 6 = 3"
  shows "\<exists>k. N = 24 * k + 21"