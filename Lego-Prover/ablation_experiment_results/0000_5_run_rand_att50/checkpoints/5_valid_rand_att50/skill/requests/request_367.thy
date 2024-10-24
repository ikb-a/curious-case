lemma sum_floor:
  fixes r :: real
  assumes "(\<Sum> k \<in> {m..n}. floor (r + k)) = S"
  shows "floor (r + m) + floor (r + (m + 1)) + ... + floor (r + n) = S"