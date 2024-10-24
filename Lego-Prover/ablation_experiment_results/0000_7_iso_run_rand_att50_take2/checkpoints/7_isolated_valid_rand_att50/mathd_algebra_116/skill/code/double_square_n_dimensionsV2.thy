lemma double_square_n_dimensions:
  fixes x :: "real list" and n :: nat
  assumes "length x = n"
  shows "2 * sum (\<lambda>i. x ! i ^ 2) {0..n-1} = sum (\<lambda>i. 2 * (x ! i ^ 2)) {0..n-1}"
proof -
  have "sum (\<lambda>i. x ! i ^ 2) {0..n-1} = sum (\<lambda>i. (x ! i ^ 2)) {0..n-1}" by simp
  then show ?thesis by (metis sum_distrib_left)
qed