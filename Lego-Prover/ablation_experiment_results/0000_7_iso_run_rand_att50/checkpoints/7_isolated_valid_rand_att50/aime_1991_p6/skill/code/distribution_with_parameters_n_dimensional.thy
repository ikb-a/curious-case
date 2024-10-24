lemma distribution_with_parameters_n_dimensional:
  fixes x y z :: "'a :: comm_ring" and A B :: "'a set"
  assumes "finite A" and "finite B"
  shows "(\<Sum>i\<in>A. x + i) * (\<Sum>j\<in>B. z + j) = (\<Sum>i\<in>A. \<Sum>j\<in>B. (x + i) * (z + j))"
proof -
  have "(\<Sum>i\<in>A. x + i) * (\<Sum>j\<in>B. z + j) = (\<Sum>i\<in>A. (x + i) * (\<Sum>j\<in>B. z + j))"
    by (simp add: sum_distrib_right)
  also have "... = (\<Sum>i\<in>A. \<Sum>j\<in>B. (x + i) * (z + j))" by (metis sum_distrib_left)
  finally show ?thesis by simp
qed