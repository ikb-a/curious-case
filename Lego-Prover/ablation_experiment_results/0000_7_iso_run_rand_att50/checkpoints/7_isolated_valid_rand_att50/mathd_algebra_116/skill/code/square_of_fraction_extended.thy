lemma square_of_fraction_extended:
  fixes a b c :: real
  assumes "b > 0" "c > 0"
  shows "(a / (b * c))^2 = a^2 / (b^2 * c^2)"
  using assms by (auto simp: field_simps)