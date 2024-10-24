lemma multi_distrib_complex_general:
  fixes zs :: "complex list"
  shows "(\<Sum>z \<in> set zs. z) * (\<Sum>z \<in> set zs. z) = (\<Sum>z1 \<in> set zs. z1) * (\<Sum>z2 \<in> set zs. z2)"
proof -
  have "(\<Sum>z \<in> set zs. z) * (\<Sum>z \<in> set zs. z) = (\<Sum>z1 \<in> set zs. z1) * (\<Sum>z2 \<in> set zs. z2)"
    unfolding sum_list_def by auto
  thus ?thesis by simp
qed