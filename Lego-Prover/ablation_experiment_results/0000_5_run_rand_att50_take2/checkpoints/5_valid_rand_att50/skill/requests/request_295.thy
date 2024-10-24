lemma floor_sum:
  fixes r :: real
  assumes "n > 0" "(\<Sum> k \<in> {0..n-1}. floor (r + k / 100)) = S"
  shows "floor (100 * r) = m" for some integer m