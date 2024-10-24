lemma average_floor:
  fixes r :: real
  assumes "(\<Sum> k \<in> {1..n}. floor (r + k)) = S"
  shows "S/n = floor (r) + (if r - floor (r) > 0 then 1 else 0)"