lemma sum_count_extended:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "card {k. k \<in> {m::nat..<n}} = n - m"
proof -
  let ?A = "{k. k \<in> {m::nat..<n}}"
  have "card ?A = n - m" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed