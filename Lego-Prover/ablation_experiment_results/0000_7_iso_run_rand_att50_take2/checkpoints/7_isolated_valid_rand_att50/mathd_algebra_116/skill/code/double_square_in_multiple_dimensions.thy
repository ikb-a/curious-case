lemma double_square_in_multiple_dimensions:
  fixes x :: "real list"
  fixes n :: nat
  assumes "length x = n"
  shows "2 * (sum_list (map (\<lambda>xi. xi^2) x)) = (2 * sum_list (map (\<lambda>xi. xi^2) x))"
proof -
  have "sum_list (map (\<lambda>xi. xi^2) x) = sum_list (map (\<lambda>xi. xi^2) x)"
    by simp
  then show ?thesis by simp
qed