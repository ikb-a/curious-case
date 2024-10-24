lemma square_of_fraction_property:
  fixes a b c :: real
  assumes "b > 0" "c > 0"
  shows "(a / b)^2 + (c / b)^2 = (a^2 + c^2) / b^2"
proof -
  have "(a / b)^2 + (c / b)^2 = a^2 / b^2 + c^2 / b^2" using assms by (simp add: power2_eq_square)
  also have "... = (a^2 + c^2) / b^2" by (metis add_divide_distrib)
  finally show ?thesis .
qed