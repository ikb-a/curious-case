lemma distributive_property:
  fixes a b c :: complex
  shows "(a + b) * c = a * c + b * c"
  by (auto simp: field_simps)