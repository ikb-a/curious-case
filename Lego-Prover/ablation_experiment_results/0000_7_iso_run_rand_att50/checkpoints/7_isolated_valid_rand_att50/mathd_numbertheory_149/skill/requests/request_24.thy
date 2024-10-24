lemma range_of_values:
  fixes N :: nat
  assumes "N = a + b * k" "N < c"
  shows "k < (c - a) / b"