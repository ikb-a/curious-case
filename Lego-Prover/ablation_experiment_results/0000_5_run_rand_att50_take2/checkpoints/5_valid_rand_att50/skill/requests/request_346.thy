lemma sum_of_floors:
  fixes r :: real
  assumes "a < b"
  shows "(\<Sum> k \<in> {a..b}. floor (r + k)) = floor (r + a) * (b - a + 1) + (\<Sum> k \<in> {a..b}. (floor (r + k) - floor (r + a)))"