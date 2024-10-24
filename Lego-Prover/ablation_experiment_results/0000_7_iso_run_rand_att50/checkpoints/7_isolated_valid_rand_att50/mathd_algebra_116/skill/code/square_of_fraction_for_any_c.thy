lemma square_of_fraction_for_any_c:
  fixes a b c :: real
  assumes "b > 0"
  shows "(c * (a / b))^2 = c^2 * (a^2 / b^2)"
proof -
  have "(c * (a / b))^2 = c^2 * ((a / b)^2)" by (simp add: power2_eq_square)
  also have "... = c^2 * (a^2 / b^2)" using square_of_fraction_general[of a b] assms by (auto simp: field_simps)
  finally show ?thesis by simp
qed