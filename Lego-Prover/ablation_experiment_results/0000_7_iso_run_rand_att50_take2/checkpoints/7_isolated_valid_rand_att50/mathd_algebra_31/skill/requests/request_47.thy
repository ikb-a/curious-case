lemma nested_radical_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "(\<lambda>n. sqrt (x + u n)) converges to sqrt (x + sqrt (x + sqrt (x + ...)))"