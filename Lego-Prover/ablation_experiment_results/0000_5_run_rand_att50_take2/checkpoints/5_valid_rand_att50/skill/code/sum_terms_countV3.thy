lemma sum_terms_count:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
  by auto