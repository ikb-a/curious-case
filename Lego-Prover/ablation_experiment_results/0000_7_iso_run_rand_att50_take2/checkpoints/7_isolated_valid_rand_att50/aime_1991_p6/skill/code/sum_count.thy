lemma sum_count:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "card {k. k \<in> {19::nat..<92}} = 73"
proof -
  have "card {k. k \<in> {19::nat..<92}} = 92 - 19" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed