lemma find_N_values:
  fixes N :: nat
  assumes "N mod 8 = 5" "N mod 6 = 3" "N < 50"
  shows "N = 21 ∨ N = 45"