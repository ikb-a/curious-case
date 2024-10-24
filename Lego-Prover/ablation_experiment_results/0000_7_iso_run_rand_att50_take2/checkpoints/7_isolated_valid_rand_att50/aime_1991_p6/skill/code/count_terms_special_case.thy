theorem count_terms_special_case:
  shows "card {k. k \<in> {19::nat..<92}} = 73"
  using count_terms_generalized[of 19 92] by auto