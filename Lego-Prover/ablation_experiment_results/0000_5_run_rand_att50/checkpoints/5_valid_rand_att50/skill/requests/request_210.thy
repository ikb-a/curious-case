lemma sum_floor:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "floor (r) = n \<Longrightarrow> (x * n + (73 - x) * (n + 1) = 546) \<Longrightarrow> x = 73n - 473"