lemma sqrt_sum_of_squares:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a^2 + b^2) * sqrt (1) = sqrt (a^2 + b^2)"
  using assms by simp