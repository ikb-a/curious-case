lemma rational_sum:
  fixes p :: rat
  assumes "p = 1 / 4"
  shows "let (m, n) = quotient_of p in m + n = 5"