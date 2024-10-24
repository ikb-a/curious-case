lemma nonneg_sum_of_squares_with_condition:
  fixes a b :: real
  assumes "a + b = c"
  shows "a^2 + b^2 >= 0"
  using nonneg_sum_of_squares by auto