lemma square_of_fraction_general:
  fixes a b :: real
  assumes "b > 0"
  shows "(x / b)^2 = x^2 / b^2"
proof -
  have "(x / b)^2 = (x * (1 / b))^2" by simp
  also have "... = x^2 * (1 / b)^2" by (auto simp: field_simps)
  also have "... = x^2 / b^2" by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed