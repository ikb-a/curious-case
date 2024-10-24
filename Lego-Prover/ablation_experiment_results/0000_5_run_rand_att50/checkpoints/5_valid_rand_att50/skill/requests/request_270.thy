lemma sum_floor_eq_546:
  fixes n m :: nat
  assumes "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = 546"
  shows "m = 546 - 73 * n"