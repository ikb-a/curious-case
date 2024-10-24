lemma square_difference:
  fixes x y :: real
  shows "(x - y) * (x + y) = x^2 - y^2"
proof -
  have "x^2 - y^2 = (x - y) * (x + y)" by (simp add: power2_eq_square algebra_simps)
  then show ?thesis by simp
qed