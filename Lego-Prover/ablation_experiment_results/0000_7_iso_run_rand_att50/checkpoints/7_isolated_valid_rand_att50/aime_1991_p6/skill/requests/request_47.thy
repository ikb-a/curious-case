lemma sum_floor_range:
  fixes r :: real
  assumes "a < b"
  shows "(\<Sum> k \<in> {a..b}. floor (r + k)) = (b - a + 1) * floor r + (\<Sum> k \<in> {a..b}. (floor (k)))"