lemma count_terms_in_range:
  fixes lower upper :: nat
  assumes "lower < upper"
  shows "card {k. k \<in> {lower::nat..<upper}} = upper - lower"
proof -
  have "card {k. k \<in> {lower::nat..<upper}} = upper - lower" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed