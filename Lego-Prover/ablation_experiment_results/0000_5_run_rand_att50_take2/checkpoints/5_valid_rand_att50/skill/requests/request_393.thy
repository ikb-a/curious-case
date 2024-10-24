lemma average_sum:
  fixes s :: real
  assumes "s = (\<Sum>k\<in>{19::nat..<92}. floor (r + k / 100))"
  shows "s = 546 \<Longrightarrow> (card {k. floor (r + k / 100) = 8}) = 35"