lemma sum_terms_count_generalized:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
  by (metis (no_types, lifting) atLeastLessThan_iff card_atLeastLessThan)