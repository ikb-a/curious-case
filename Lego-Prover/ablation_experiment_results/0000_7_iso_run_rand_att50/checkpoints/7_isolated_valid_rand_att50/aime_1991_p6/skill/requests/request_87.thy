lemma sum_floor_range:
  fixes r :: real
  assumes "a < b"
  shows "(\<Sum> k \<in> {a..b}. floor (r + k / 100)) = (b - a + 1) * floor r + (\<Sum> k \<in> {a..b}. (if r + k / 100 - floor r < 1 then 0 else 1))"