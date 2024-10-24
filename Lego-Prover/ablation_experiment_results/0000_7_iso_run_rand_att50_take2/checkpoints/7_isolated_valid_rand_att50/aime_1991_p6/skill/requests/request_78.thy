lemma setup_equation:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "8 * x + 7 * (73 - x) = 546"