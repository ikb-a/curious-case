lemma double_square_multi:
  fixes x :: real
  shows "2 * (x^2 + y^2) = 2 * x^2 + 2 * y^2"
  by (simp add: distrib_left)