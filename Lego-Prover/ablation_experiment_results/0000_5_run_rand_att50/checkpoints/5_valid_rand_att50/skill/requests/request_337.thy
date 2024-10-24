lemma sum_of_floors:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "let x = card {k. k \<in> {19::nat..<92} \<and> floor (r + k / 100) = 8} in x = 35"