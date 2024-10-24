lemma sum_contribution:
  fixes n m :: nat
  assumes "n + m = 73" "n * 7 + m * 8 = 546"
  shows "m = 35"