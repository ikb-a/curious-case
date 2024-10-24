lemma congruences:
  fixes N :: nat
  assumes "N mod 8 = 5"
    and "N mod 6 = 3"
  shows "N < 50"