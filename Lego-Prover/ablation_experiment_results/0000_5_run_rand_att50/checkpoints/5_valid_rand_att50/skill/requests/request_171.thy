lemma convergence_of_nested_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "(\<lambda>n. sqrt (x + u n)) converges to 9"