lemma floor_sum_expression:
  fixes r :: real
  defines "n = floor r"
  shows "\<Sum>k\<in>{19::nat..<92}. floor (r + k / 100) = 73 * n + m"
  where "m = card {k. k \<in> {19::nat ..< 92} | k. floor (r + k / 100) = n + 1}"