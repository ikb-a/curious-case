lemma sum_count_extended:
  fixes r :: real
  assumes "(\<Sum> k \<in>{m::nat..<n}. (floor (r + k / 100))) = s"
  shows "card {k. k \<in> {m::nat..<n}} = n - m"
proof -
  have "card {k. k \<in> {m::nat..<n}} = n - m" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed