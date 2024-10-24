lemma bounds_on_N:
  fixes m :: nat
  assumes "N = 24 * m + 21" "N < 50"
  shows "m < 2"