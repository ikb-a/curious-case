lemma count_terms_empty:
  shows "card {k. k \<in> {10::nat..<10}} = 0"
proof -
  have "card {k. k \<in> {10::nat..<10}} = 10 - 10" 
    by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed