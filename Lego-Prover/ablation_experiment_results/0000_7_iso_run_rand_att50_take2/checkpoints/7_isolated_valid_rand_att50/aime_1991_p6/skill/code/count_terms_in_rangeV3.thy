lemma count_terms_in_range:
  fixes a b :: nat
  assumes "a < b"
  shows "card {k. k \<in> {a::nat..<b}} = b - a"
proof -
  have "card {k. k \<in> {a::nat..<b}} = b - a" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed