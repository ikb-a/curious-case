lemma m_expression:
  fixes r :: real
  defines "n = floor r"
  assumes "(\<Sum>k\<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "m = 546 - 73 * n"