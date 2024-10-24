lemma weighted_sum_of_products:
  fixes x a b c :: real
  assumes "x > 0" "finite A" "b = a * x"
  shows "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. a * x * c) \<and> (\<Sum>i\<in>A. b * c) = x * (\<Sum>i\<in>A. a * c)"
proof -
  have "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. (a * x) * c)" using assms(3) by simp
  also have "... = c * (\<Sum>i\<in>A. a * x)" by (simp add: sum_distrib_left)
  also have "... = x * (\<Sum>i\<in>A. a * c)" by (simp add: sum_distrib_right)
  finally show "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. a * x * c) \<and> (\<Sum>i\<in>A. b * c) = x * (\<Sum>i\<in>A. a * c)" by auto
qed