lemma sum_of_squares_nonneg:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
  using nonnegativity_of_squares by simp