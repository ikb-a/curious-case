lemma n_eq_7:
  fixes r :: real
  assumes "(\<Sum>k\<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "n = 7 ? m = 35"