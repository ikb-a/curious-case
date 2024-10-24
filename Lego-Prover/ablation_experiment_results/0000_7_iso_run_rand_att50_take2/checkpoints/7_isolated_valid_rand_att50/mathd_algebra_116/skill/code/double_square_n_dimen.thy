lemma double_square_n_dimen:
  fixes x :: "real list" and n :: nat
  assumes "length x = n"
  shows "2 * (\<Sum>i<length x. x!i^2) = (2 * (\<Sum>i<length x. x!i^2))"
  using assms by simp