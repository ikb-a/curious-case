lemma average_value:
  assumes "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = 546"
  shows "546 / 73 = 7.48"