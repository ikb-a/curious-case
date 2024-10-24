lemma square_of_fraction_general:
  fixes a b :: real
  shows "(a / b)^2 = a^2 / b^2"
  by (auto simp: field_simps)