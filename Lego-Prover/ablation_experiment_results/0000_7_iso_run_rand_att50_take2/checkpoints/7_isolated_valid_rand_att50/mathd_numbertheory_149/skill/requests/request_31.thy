lemma valid_range:
  fixes N m :: nat
  assumes "N = 24*m + 21" "N < 50"
  shows "m < 2"