lemma sum_floor_bound:
  fixes r :: real
  assumes "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "73 * (floor r) \le> 546 \<and> 73 * (floor r + 1) > 546"
proof -
  let ?n = "floor r"
  have "(\<Sum> k \<in>