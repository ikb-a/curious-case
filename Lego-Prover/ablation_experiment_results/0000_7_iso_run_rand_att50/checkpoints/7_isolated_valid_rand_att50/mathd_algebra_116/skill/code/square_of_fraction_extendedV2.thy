lemma square_of_fraction_extended:
  fixes a b c :: real
  assumes "b > 0" "c > 0"
  shows "(a / b) * (c / b) = (a * c) / (b^2)"
proof -
  have "(a / b) * (c / b) = (a * c) / (b * b)" using assms by (simp add: field_simps)
  thus ?thesis by sos
qed