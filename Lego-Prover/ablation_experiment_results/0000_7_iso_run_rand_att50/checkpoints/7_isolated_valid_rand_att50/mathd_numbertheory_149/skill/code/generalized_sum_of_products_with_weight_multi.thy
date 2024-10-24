lemma generalized_sum_of_products_with_weight_multi:
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
primrec generalized_sum_of_products_with_weight_multi :: "real list \<Rightarrow> real \<Rightarrow> real" where
  "generalized_sum_of_products_with_weight_multi [] _ = 0" |
  "generalized_sum_of_products_with_weight_multi (x # xs) a = (x * a) + generalized_sum_of_products_with_weight_multi xs a"