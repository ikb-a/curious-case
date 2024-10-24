lemma sum_count_generalized:
  fixes r :: real
  fixes a b :: nat
  assumes "(\<Sum> k \<in> {a::nat..<b}. (floor (r + k / 100))) = 546"
  shows "card {k. k \<in> {a::nat..<b}} = b - a"
proof -
  have "card {k. k \<in> {a::nat..<b}} = b - a" by (metis Collect_mem_eq card_atLeastLessThan)
  thus ?thesis by simp
qed