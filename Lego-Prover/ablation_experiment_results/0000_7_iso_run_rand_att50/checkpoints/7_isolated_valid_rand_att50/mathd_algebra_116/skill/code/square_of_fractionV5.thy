lemma square_of_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "(a / b)^2 = a^2 / b^2"
proof -
  have "(a / b)^2 = a^2 / (b * b)" using assms by (simp add: power2_eq_square)
  then show ?thesis by (simp add: field_simps)
qed