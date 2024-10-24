lemma square_of_fraction_general:
  fixes a b :: real
  assumes "b > 0"
  shows "(x / b)^2 = x^2 / b^2"
proof -
  have "(x / b)^2 = x^2 / (b^2)" using assms by (simp add: power2_eq_square)
  then show ?thesis by simp
qed