lemma min_value_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
  by (simp add: power2_eq_square)