lemma sum_floor_bounds:
  fixes r :: real
  assumes "(\<Sum> k \<in> {m::nat..<n}. floor (r + k / 100)) = S"
  shows "S = x * 7 + (n - m - x) * 8" for some x where "0 \<le> x \<le> n - m"