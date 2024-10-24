lemma sum_floor_count:
  fixes r :: real and n :: nat
  assumes "(\<Sum> k \<in> {19::nat..<n}. floor (r + k / 100)) = S"
  shows "n - 19 = 73"