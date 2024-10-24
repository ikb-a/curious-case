lemma nonnegative_sum_of_squares_three:
  fixes a b c :: real
  shows "a^2 + b^2 + c^2 >= 0"
  using nonnegative_sum_of_squares_general[of a b] by simp