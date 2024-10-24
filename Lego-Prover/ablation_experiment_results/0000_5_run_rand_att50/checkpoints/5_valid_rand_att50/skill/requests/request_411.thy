lemma sum_valid_N:
  fixes m :: nat
  assumes "m < 2"
  shows "sum (λm. 24 * m + 21) {0, 1} = 66"