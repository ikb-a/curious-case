lemma floor_sum_bounds:
  fixes r :: real
  assumes "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "\<lfloor>r + 0.19\<rfloor> \<le> \sum_