lemma sum_floor_range:
  fixes r :: real
  assumes "a < b"
  shows "(\<Sum> k \<in> {a..b}. floor (r + k)) = (b - a + 1) * floor r + m"
  where "m = count {k. a \<le> k \<le> b \<and> floor (r + k) = floor r + 1}"