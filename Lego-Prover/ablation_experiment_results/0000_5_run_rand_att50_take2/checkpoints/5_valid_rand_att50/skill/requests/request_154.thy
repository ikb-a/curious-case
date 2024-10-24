lemma find_N_values:
  fixes N :: nat
  assumes "N < 50"
    and "N mod 8 = 5"
    and "N mod 6 = 3"
  shows "N = 21 ∨ N = 45"