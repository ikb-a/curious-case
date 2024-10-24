lemma floor_sum_representation:
  fixes n :: nat
  assumes "n = floor r"
  shows "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = x * n + (73 - x) * (n + 1)"
  for x :: nat