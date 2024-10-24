lemma square_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "(x - y)^2 = (x + (-y))^2" by (simp add: algebra_simps)
  then have "... = x^2 + 2 * x * (-y) + (-y)^2" by sos
  then have "... = x^2 - 2 * x * y + y^2" by (simp add: power2_eq_square)
  thus ?thesis by sos
qed