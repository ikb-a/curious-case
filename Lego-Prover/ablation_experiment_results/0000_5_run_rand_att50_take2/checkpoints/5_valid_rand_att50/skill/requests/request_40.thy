lemma sum_floor_terms:
  fixes r :: real
  shows "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = 73 * floor r + m"
  for m where "m = count {k. 19 \<le> k \<and> k < 92 \<and> floor (r + k / 100) = floor r + 1}"