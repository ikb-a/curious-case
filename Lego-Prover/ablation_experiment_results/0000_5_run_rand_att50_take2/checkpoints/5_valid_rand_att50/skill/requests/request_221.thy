lemma sum_floor:
  fixes r :: real
  assumes "n > 0"
  shows "(\<Sum> k = 0..n. floor (r + k)) = n * floor r + (\<Sum> k = 0..n. floor k)"