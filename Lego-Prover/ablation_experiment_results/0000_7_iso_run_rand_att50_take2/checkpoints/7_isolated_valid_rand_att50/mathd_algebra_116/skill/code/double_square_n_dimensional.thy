lemma double_square_n_dimensional:
  fixes x :: "real list"
  assumes "length x = n" 
  shows "2 * (\<Sum>i=1..n. x ! i ^ 2) = 2 * (\<Sum>i=1..n. (x ! i ^ 2))"
  by (simp add: sum_distrib_left)