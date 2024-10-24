lemma floor_sum_property:
  fixes r :: real
  assumes "a \<le> r < b" "n > 0"
  shows "(\<Sum> k \<in> {0..n-1}. floor (r + k)) = n * floor r + (\<Sum> k \<in> {0..n-1}. (floor (k)))"