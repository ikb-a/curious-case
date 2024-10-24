lemma number_of_terms:
  shows "card {k. k \<in> {19::nat..<92}} = 73"
proof -
  have "card {k. k \<in> {19::nat..<92}} = 92 - 19" 
    by (metis Collect_mem_eq card_atLeastLessThan)
  also have "... = 73" 
    by simp
  finally show ?thesis .
qed