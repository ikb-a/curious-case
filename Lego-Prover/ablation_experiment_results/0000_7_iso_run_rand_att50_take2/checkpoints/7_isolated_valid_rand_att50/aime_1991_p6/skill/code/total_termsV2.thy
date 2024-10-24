lemma total_terms:
  shows "card {k. k \<in> {19::nat..<92}} = 73"
proof -
  let ?S = "{k. k \<in> {19::nat..<92}}"
  have "card ?S = card {19::nat..<92}" 
    by (metis Collect_mem_eq)
  also have "... = 92 - 19" 
    by (metis card_atLeastLessThan)
  also have "... = 73" 
    by simp
  finally show ?thesis 
    by simp
qed