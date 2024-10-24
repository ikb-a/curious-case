lemma floor_sum_average:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) div 73 = 7 \<and> (\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) mod 73 = 35"