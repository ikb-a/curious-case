lemma generalized_sum_of_products_with_weight:
  fixes x a b c d :: real
  assumes "x > 0" "finite A" "b = a * x" "c > 0" "d > 0"
  shows "(\<Sum>i\<in>A. b * c * d) = (\<Sum>i\<in>A. a * (x * c * d))"
proof -
  have "(\<Sum>i\<in>A. b * c * d) = (\<Sum>i\<in>A. (a * x) * c * d)" using assms(3) by simp
  also have "... = d * (\<Sum>i\<in>A. (a * x) * c)" by (simp add: sum_distrib_left)
  also have "... = d * c * (\<Sum>i\<in>A. a * x)" by (simp add: sum_distrib_right)
  also have "... = c * d * (\<Sum>i\<in>A. a) * x" using assms(4) by (simp add: sum_distrib_right)
  finally show ?thesis by simp
qed