lemma floor_sum:
  fixes r :: real and n :: nat
  assumes "n = floor r"
  shows "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = (73 - x) * n + x * (n + 1)"
  for x :: nat