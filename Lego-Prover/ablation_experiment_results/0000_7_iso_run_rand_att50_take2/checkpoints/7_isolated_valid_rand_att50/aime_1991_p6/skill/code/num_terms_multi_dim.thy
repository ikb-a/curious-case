lemma num_terms_multi_dim:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
  using assms by auto