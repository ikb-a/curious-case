lemma substitution_and_simplification:
  fixes a n
  assumes "a + b = 73" and "a * n + b * (n + 1) = 546"
  shows "73 * n - a = 473"