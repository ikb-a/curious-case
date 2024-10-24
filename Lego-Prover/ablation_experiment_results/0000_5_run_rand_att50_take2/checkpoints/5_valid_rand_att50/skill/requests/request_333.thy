lemma sum_floor:
  fixes r :: real
  assumes "(\<Sum> k \<in> {a..b}. floor (r + k)) = S"
  shows "floor (S) = floor (r * (b - a + 1)) + (if r + a < floor r + a + 1 then 0 else 1)"