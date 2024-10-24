lemma floor_sum:
  fixes n :: nat
  assumes "n = floor r"
  shows "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = (73 - x)n + (x)(n + 1) = 546"
  where "x = 546 - 73 * n"