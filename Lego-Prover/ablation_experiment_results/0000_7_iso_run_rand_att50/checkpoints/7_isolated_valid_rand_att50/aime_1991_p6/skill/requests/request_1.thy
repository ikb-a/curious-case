lemma sum_floor_terms:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "count_terms (floor (r + k / 100))"