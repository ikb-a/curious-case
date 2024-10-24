lemma sum_floor_function:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "floor r + m = 546 - 73 * floor r"