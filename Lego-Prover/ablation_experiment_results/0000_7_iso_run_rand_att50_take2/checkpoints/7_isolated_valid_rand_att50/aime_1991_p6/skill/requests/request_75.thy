lemma sum_floor_properties:
  fixes r :: real
  assumes "n = floor r"
  shows "(\<Sum> k = 0..m. floor (r + k)) = (m + 1) * n + (\<Sum> k = 0..m. (floor (k + r) - n))"