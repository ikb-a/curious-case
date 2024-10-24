lemma floor_sum_property:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "(\<Sum> k \<in> {m..n}. floor (r + k)) = (\<Sum> k \<in> {m..n}. floor r + k)"