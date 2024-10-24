lemma sum_floor_function:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "(\<Sum> k \<in> {m..n}. floor (r + k)) = (\<Sum> k \<in> {m..n}. floor r + k)"