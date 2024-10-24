lemma floor_sum_expression:
  fixes n m :: nat
  assumes "0 \<le> m" and "n + m \<le> 73"
  shows "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = (73 - m) * n + m * (n + 1)"