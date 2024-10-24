lemma double_square_in_n_dimensions:
  fixes x :: "real list"
  assumes "length x = n"
  shows "2 * (sum_list (map (\<lambda>y. y^2) x)) = sum_list (map (\<lambda>y. 2 * (y^2)) x)"
proof -
  have "2 * (sum_list (map (\<lambda>y. y^2) x)) = sum_list (map (\<lambda>y. 2 * (y^2)) x)"
    by (metis sum_list_const_mult)
  thus ?thesis by (simp add: assms)
qed