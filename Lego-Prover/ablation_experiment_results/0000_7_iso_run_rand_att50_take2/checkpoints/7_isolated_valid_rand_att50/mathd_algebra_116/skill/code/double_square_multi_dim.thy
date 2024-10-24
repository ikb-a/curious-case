lemma double_square_multi_dim:
  fixes x :: "real list"
  shows "2 * (sum_list (map (\<lambda>y. y^2) x)) = sum_list (map (\<lambda>y. 2 * y^2) x)"
proof -
  have "sum_list (map (\<lambda>y. y^2) x) = sum_list (map (\<lambda>y. y^2) x)" by simp
  then show ?thesis by (metis sum_list_const_mult)
qed