lemma floor_sum:
  fixes r :: real
  assumes "(\<Sum> k \<in> {a::nat..<b}. floor (r + k / 100)) = c"
  shows "floor (100 * r) = d" (* where d is to be determined based on the context *)