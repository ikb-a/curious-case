lemma sum_floor_function:
  fixes r :: real
  assumes "a < b"
  shows "(\<Sum> k = a..b. floor (r + k)) = floor (r + a) * (b - a + 1) + (\<Sum> k = a..b. (floor (r + k) - floor (r + a)))"