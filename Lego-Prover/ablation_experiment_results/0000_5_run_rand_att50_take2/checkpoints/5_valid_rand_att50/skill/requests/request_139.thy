lemma sequence_partition:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<Sum> k \<in> {1..n}. f k) = a * m + b * (n - m) \<Longrightarrow> m + n - m = n"
  where "f k = if k < m then a else b"