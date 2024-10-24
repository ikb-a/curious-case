lemma sum_count_floor_range:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) - 73 = 473"
proof -
  have "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) - card {k. k \<in> {19::nat..<92}} = 546 - 73"
    using assms sum_count_floor_value by simp
  thus ?thesis by (smt (verit) assms)
qed