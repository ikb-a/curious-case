lemma find_possible_N:
  fixes m :: nat
  assumes "N = 24m + 21"
  shows "N < 50 ? m < 1"