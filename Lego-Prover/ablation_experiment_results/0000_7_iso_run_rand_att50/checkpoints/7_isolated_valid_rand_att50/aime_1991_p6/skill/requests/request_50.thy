lemma floor_sum_integer:
  fixes r :: real
  assumes "(\<Sum> k \<in> {m::nat..<n}. floor (r + k / 100)) = S"
  shows "S div (n - m) \<le> floor (r) \<and> floor (r) < S div (n - m) + 1"