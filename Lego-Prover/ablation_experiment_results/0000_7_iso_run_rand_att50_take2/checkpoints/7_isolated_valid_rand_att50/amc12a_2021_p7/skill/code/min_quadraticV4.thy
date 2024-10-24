lemma min_quadratic:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
  by (simp add: non_negative_squares)