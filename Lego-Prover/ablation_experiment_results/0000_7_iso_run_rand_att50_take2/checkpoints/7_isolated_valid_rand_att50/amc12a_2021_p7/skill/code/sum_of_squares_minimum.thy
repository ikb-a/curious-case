lemma sum_of_squares_minimum:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
  using non_negative_squares[of x] non_negative_squares[of y] by auto