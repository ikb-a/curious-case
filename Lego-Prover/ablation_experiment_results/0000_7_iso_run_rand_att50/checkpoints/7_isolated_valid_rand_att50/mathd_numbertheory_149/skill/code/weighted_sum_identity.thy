lemma weighted_sum_identity:
  fixes a b c :: real
  assumes "x > 0" "finite A" "b = a * x"
  shows "(\<Sum>i\<in>A. b * c) = x * c * (\<Sum>i\<in>A. a)"
proof -
  have "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. (a * x) * c)" using assms(3) by simp
  also have "... = c * (\<Sum>i\<in>A. a * x)" by (simp add: sum_distrib_left)
  also have "... = c * x * (\<Sum>i\<in>A. a)" by (simp add: sum_distrib_right)
  finally show ?thesis by simp
qed