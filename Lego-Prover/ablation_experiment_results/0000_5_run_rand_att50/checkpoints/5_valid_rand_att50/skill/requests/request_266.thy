lemma bounds_on_r:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "7.43 \<le> r < 7.44"