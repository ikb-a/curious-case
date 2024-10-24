lemma distribution_of_terms:
  assumes "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = 546"
  obtains (x::nat) where "x = 35" "73 - x = 38"