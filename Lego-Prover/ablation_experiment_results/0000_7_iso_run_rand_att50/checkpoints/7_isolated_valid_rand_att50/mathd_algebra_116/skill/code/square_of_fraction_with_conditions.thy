lemma square_of_fraction_with_conditions:
  fixes a b c :: real
  assumes "b > 0" "c > 0"
  shows "(a / b)^2 + (c / b)^2 = a^2 / b^2 + c^2 / b^2"
proof -
  have "(a / b)^2 = a^2 / b^2" using square_of_fraction_generalized[of a b] assms(1) by (auto simp: field_simps)
  have "(c / b)^2 = c^2 / b^2" using square_of_fraction_generalized[of c b] assms(2) by (auto simp: field_simps)
  then show ?thesis by (simp add: power2_eq_square)
qed