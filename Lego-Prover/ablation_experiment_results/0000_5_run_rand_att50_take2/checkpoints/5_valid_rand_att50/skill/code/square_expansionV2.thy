lemma square_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2*x*y + y^2"
proof -
  have "(x - y)^2 = (x + -y)^2" by simp
  then have "(x - y)^2 = x^2 + 2 * x * (-y) + (-y)^2" by (simp add: power2_eq_square algebra_simps)
  also have "... = x^2 - 2 * x * y + y^2" by (simp add: power2_eq_square algebra_simps)
  finally show ?thesis by simp
qed