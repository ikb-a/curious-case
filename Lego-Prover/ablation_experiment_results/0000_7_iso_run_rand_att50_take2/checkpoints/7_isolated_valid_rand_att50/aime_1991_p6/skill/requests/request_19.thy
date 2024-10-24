lemma sum_floor_values:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "count (floor (r + k / 100) = 7) + count (floor (r + k / 100) = 8) = 73"