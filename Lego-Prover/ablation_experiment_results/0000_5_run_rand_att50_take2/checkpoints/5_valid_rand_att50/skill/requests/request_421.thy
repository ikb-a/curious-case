lemma floor_sum:
  fixes r :: real
  assumes "a < b"
  shows "(\<Sum> k \<in> {a..b}. floor (r + k)) = floor (r + a) * (b - a + 1) + (\<Sum> k \<in> {0..(b - a)}. (if r + a + k < floor (r + a) + 1 then 0 else 1))"