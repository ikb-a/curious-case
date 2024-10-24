lemma square_of_fraction_variable:
  fixes a b c :: real
  assumes "b > 0" "c > 0"
  shows "((a / b) * c)^2 = (a^2 * c^2) / (b^2)"
proof -
  have "((a / b) * c)^2 = (a * c / b)^2" by simp
  also have "... = (a * c)^2 / b^2" by (auto simp: field_simps)
  also have "... = a^2 * c^2 / b^2" by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed