lemma square_of_fraction_properties:
  fixes a b c d :: real
  assumes "b > 0" "d > 0"
  shows "(a / b)^2 + (c / d)^2 = (a^2 / b^2) + (c^2 / d^2)"
proof -
  have "(a / b)^2 = a^2 / b^2" using assms by (simp add: power2_eq_square)
  moreover have "(c / d)^2 = c^2 / d^2" using assms by (simp add: power2_eq_square)
  ultimately show ?thesis by simp
qed