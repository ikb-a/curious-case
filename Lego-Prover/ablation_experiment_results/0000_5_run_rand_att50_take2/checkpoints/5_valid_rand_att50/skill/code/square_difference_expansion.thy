lemma square_difference_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "(x - y)^2 = (x + -y)^2" by simp
  then have "... = x^2 + 2 * x * (-y) + (-y)^2" 
    by (simp add: power2_eq_square algebra_simps)
  then show ?thesis by (simp add: power2_eq_square algebra_simps)
qed