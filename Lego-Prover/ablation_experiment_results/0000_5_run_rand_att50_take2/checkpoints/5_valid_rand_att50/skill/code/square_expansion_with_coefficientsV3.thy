lemma square_expansion_with_coefficients:
  fixes m n x y :: real
  shows "(m*x - n*y)^2 = m^2 * x^2 - 2 * m * n * x * y + n^2 * y^2"
proof -
  have "(m*x - n*y) * (m*x - n*y) = (m*x)^2 - 2*(m*x)*(n*y) + (n*y)^2" by sos
  thus ?thesis by (simp add: power2_eq_square)
qed