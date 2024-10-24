lemma floor_terms_analysis:
  fixes r :: real
  assumes "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = 546"
  shows "floor (r + 0.19) \<le> floor (r + k / 100) \<le> floor (r + 0.91)"