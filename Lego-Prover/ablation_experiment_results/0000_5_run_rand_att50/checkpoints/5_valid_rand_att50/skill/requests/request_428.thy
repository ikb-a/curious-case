lemma sum_of_floors:
  fixes r :: real
  assumes "n > 0"
  shows "(\<Sum> k = 0..n. floor (r + k)) = floor (n * r) + (n + 1) * floor (1)"