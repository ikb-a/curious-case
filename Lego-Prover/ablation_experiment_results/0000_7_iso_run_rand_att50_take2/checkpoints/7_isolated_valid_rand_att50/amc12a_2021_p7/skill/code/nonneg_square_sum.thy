lemma nonneg_square_sum:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
  by (simp add: power2_eq_square)