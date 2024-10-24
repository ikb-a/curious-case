lemma express_sum_as:
  fixes r :: real and n :: int
  assumes "n = floor r"
  shows "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = m(n + 1) + (73 - m)n"
  where "m = count {k. 19 \<le> k \<and> k < 92 \<and> floor (r + k / 100) = n + 1}"