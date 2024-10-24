lemma total_terms:
  shows "card {k. k \<in> {19::nat..<92}} = 73"
proof -
  have "card {k. k \<in> {19::nat..<92}} = card {19::nat..<92}" 
    by (metis Collect_mem_eq)
  also have "... = 92 - 19" 
    by (metis card_atLeastLessThan)
  finally show ?thesis 
    by simp
qed