lemma sum_floor:
  fixes r :: real
  assumes "n > 0"
  shows "(\<Sum> k \<in> {0..n-1}. floor (r + k)) = floor (n * r) - (n - 1) * floor (r)"