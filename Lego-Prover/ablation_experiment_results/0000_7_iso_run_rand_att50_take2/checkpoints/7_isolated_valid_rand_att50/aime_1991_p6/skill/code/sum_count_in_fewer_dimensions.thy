lemma sum_count_in_fewer_dimensions:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<47}. (floor (r + k / 100))) = 246"  
  shows "card {k. k \<in> {19::nat..<47}} = 28"  
proof -
  have "card {k. k \<in> {19::nat..<47}} = 47 - 19" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed