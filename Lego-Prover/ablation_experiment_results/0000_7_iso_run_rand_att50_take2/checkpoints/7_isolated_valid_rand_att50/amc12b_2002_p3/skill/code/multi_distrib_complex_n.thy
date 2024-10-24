lemma multi_distrib_complex_n:
  fixes a b :: complex
    and c d :: "complex list"
  shows "(a + b) * (\<Sum>i\<in>set c. i) = a * (\<Sum>i\<in>set c. i) + b * (\<Sum>i\<in>set c. i)"
  by (auto simp: field_simps)