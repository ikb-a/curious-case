lemma sum_floor_terms:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "73 * a + x = 546"
  where "a = floor r + 7" "x = 546 - 73 * a"