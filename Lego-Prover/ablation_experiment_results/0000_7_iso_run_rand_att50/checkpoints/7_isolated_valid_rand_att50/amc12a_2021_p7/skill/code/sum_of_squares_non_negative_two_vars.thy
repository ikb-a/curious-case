lemma sum_of_squares_non_negative_two_vars:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
  by (simp add: power2_eq_square)