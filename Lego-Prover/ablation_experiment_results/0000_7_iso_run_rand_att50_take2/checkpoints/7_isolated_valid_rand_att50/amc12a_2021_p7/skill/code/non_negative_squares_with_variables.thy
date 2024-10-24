lemma non_negative_squares_with_variables:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
  using sum_of_non_negative_squares by simp