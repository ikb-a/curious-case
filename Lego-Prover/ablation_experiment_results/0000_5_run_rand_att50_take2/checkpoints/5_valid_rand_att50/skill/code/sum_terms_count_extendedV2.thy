lemma sum_terms_count_extended:
  fixes lower :: nat and upper :: nat
  assumes "lower < upper"
  shows "card {lower::nat..<upper} = upper - lower"
  using assms by auto