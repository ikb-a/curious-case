lemma sum_floor_terms:
  fixes r :: real
  assumes "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "73 * floor r + x = 546"
  where "x = count_terms_equal_to_floor_plus_one r"