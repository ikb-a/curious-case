lemma sum_floor_function:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "(\<Sum> k = a..b. floor (r + k)) = (b - a + 1) * floor r + (\<Sum> k = a..b. floor k)"