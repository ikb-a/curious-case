lemma bound_floor_sum:
  fixes r :: real
  assumes "(\<Sum> k = 19..91. floor (r + k / 100)) = 546"
  shows "7.43 <= r & r < 7.44"