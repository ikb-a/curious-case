lemma floor_sum:
  fixes r :: real
  assumes "(\<Sum> k \<in> {a..b}. floor (r + k)) = S"
  shows "floor (r + a) + floor (r + a + 1) + ... + floor (r + b) = S"