lemma sum_of_floors:
  fixes r :: real
  assumes "a < r < b"
  shows "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = (n * (73 - x) + (n + 1) * x)"