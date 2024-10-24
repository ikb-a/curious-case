lemma sum_of_products_with_weight_generalized:
  fixes x a b c :: real
  assumes "x > 0" "finite A" "b = a * x" "c > 0"
  shows "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. a * (x * c))"
proof -
  have "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. (a * x) * c)" using assms(3) by simp
  also have "... = c * (\<Sum>i\<in>A. a * x)" by (simp add: sum_distrib_left)
  also have "... = c * (\<Sum>i\<in>A. a) * x" using assms(4) by (simp add: sum_distrib_right)
  finally show ?thesis by simp
qed