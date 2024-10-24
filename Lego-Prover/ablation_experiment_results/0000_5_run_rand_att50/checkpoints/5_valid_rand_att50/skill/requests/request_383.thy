lemma bound_check:
  fixes N :: nat
  assumes "N = 24m + 21" "N < 50"
  shows "m < 2"