lemma double_square_multi_dim:
  fixes x :: "real set"
  assumes "finite x"
  shows "2 * (sum (\<lambda>y. y^2) x) = sum (\<lambda>y. 2 * (y^2)) x"
proof -
  have "2 * (sum (\<lambda>y. y^2) x) = sum (\<lambda>y. 2 * (y^2)) x"
    by (metis sum_distrib_left)
  thus ?thesis by simp
qed