lemma floor_sum_range:
  fixes r :: real
  assumes "k1 < k2"
  shows "(\<Sum> k \<in>{k1::nat..<k2}. floor (r + k / 100)) = (k2 - k1) * floor r + m"
  where "m = card {k. k1 \<le> k \<and> floor (r + k / 100) = floor r + 1}"