lemma double_square_differences:
  fixes x y :: real
  shows "2 * (x^2 - y^2) = 2 * x^2 - 2 * y^2"
proof -
  have "2 * (x^2 - y^2) = 2 * x^2 - 2 * y^2" by (simp add: distrib_left)
  thus ?thesis .
qed