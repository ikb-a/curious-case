lemma square_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2*x*y + y^2"
proof -
  have "(-y + x)^2 = (-y)^2 + 2*(-y)*x + x^2" by (simp add: power2_eq_square algebra_simps)
  also have "... = y^2 - 2*y*x + x^2" by (simp add: algebra_simps)
  finally show ?thesis by simp
qed