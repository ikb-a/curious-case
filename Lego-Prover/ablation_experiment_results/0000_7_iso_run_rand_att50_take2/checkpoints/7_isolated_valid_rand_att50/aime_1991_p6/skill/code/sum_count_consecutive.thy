lemma sum_count_consecutive:
  fixes r :: real
  assumes "(\<Sum> k \<in>{k1::nat..<k2}. (floor (r + k / 100))) = total_sum"
  shows "card {k. k \<in> {k1::nat..<k2}} = k2 - k1"
proof -
  have "card {k. k \<in> {k1::nat..<k2}} = k2 - k1" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed