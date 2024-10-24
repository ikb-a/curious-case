lemma sum_arithmetic_series:
  fixes a d n :: nat
  assumes "n > 0"
  shows "(\<Sum> i = 0..n - 1. a + i * d) = n * a + d * (n * (n - 1) div 2)"