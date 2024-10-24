lemma double_square_n_dimensions:
  fixes x :: "real list"
  shows "2 * sum_list (map (\<lambda>xi. xi^2) x) = sum_list (map (\<lambda>xi. 2 * (xi^2)) x)"
proof -
  have "sum_list (map (\<lambda>xi. xi^2) x) = sum_list (map (\<lambda>xi. (xi^2)) x)"
    by simp
  then show ?thesis
    by (metis sum_list_const_mult)
qed