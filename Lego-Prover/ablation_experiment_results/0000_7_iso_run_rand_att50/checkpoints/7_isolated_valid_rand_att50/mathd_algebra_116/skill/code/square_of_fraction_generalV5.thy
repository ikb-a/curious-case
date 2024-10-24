lemma square_of_fraction_general:
  fixes a b :: real
  assumes "b \<noteq> 0"
  shows "(a / b)^2 = a^2 / b^2"
proof -
  have "(a / b)^2 = (a * a) / (b * b)" using assms by (simp add: power2_eq_square)
  thus ?thesis by (auto simp: field_simps)
qed