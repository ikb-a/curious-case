lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b" "n > 0"
  shows "(\<Sum> k \<in> {a..b}. floor (r + k)) = floor (r + a) * (b - a + 1) + m"
  where "m = count {k. k \<in> {a..b} \<and> r + k - floor (r + k) > 0}"