lemma sum_of_sums:
  fixes A :: "'a set" and x a b :: real
  assumes "finite A"
  shows "(\<Sum>i\<in>A. a + b) = card A * a + card A * b"
proof -
  have "(\<Sum>i\<in>A. a + b) = (\<Sum>i\<in>A. a) + (\<Sum>i\<in>A. b)" by (simp add: distrib_left)
  then have "(\<Sum>i\<in>A. a) = card A * a" and "(\<Sum>i\<in>A. b) = card A * b" using assms by auto
  then show ?thesis by (auto simp: field_simps)
qed