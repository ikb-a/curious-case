lemma sum_of_sums_generalized:
  fixes A :: "'a set" and f g :: real
  assumes "finite A"
  shows "(\<Sum>i\<in>A. f + g) = card A * f + card A * g"
proof -
  have "(\<Sum>i\<in>A. f + g) = (\<Sum>i\<in>A. f) + (\<Sum>i\<in>A. g)" by (simp add: distrib_left)
  then show ?thesis by auto
qed