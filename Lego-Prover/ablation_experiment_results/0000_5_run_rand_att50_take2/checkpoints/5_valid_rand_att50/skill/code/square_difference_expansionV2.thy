lemma square_difference_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "(-y)^2 = y^2" by (simp add: power2_eq_square)
  have "(-2 * x * -y) = 2 * x * y" by (simp add: algebra_simps)
  show ?thesis by sos
qed