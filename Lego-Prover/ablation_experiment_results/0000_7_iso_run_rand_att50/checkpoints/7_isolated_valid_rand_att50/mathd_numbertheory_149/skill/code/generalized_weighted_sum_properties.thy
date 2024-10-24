lemma generalized_weighted_sum_properties:
  fixes A :: "'a set" and x a b c d :: real
  assumes "x > 0" "y > 0" "finite A" "b = a * x" "d = c * y"
  shows "(\<Sum>i\<in>A. b + d) = (\<Sum>i\<in>A. (a * x) + (c * y))"
proof -
  have "(\<Sum>i\<in>A. b + d) = (\<Sum>i\<in>A. ((a * x) + (c * y)))" using assms(4) assms(5) by simp
  also have "... = (\<Sum>i\<in>A. (a * x)) + (\<Sum>i\<in>A. (c * y))" by (auto simp: field_simps)
  also have "... = (\<Sum>i\<in>A. b) + (\<Sum>i\<in>A. d)" using assms(4) assms(5) by simp
  finally show ?thesis by (metis assms(4) assms(5))
qed