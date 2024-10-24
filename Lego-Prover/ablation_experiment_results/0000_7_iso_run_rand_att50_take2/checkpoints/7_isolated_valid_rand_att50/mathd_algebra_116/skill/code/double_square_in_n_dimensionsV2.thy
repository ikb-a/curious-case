lemma double_square_in_n_dimensions:
  fixes x :: "real set"
  assumes "finite x"
  shows "2 * (\<Sum>i\<in>x. i^2) = (\<Sum>i\<in>x. 2 * (i^2))"
proof -
  have "2 * (\<Sum>i\<in>x. i^2) = (\<Sum>i\<in>x. 2 * i^2)" 
    by (simp add: sum_distrib_left)
  thus ?thesis by simp
qed