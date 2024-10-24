lemma sum_equation:
  fixes n x
  assumes "x + (73 - x) = 73" "x * n + (73 - x) * (n + 1) = 546"
  shows "73 * n = 546"