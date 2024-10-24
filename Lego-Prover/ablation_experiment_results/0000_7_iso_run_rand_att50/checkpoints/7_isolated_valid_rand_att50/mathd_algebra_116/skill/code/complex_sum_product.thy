lemma complex_sum_product:
  fixes x y z :: complex
  shows "(x + y) * z = x * z + y * z"
  by (auto simp: field_simps)