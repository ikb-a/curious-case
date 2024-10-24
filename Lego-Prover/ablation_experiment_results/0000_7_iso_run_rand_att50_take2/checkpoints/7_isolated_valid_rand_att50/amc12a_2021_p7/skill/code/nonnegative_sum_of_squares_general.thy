lemma nonnegative_sum_of_squares_general:
  fixes a b c :: real
  shows "a^2 + b^2 + c^2 >= 0"
  by (auto simp: power2_eq_square)