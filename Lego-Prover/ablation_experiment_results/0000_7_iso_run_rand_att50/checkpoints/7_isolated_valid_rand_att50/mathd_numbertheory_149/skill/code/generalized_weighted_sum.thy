lemma generalized_weighted_sum:
  fixes x y a b c :: real
  assumes "x > 0" "y > 0" "finite A" "b = a * x" "c = b * y"
  shows "(\<Sum>i\<in>A. c) = (\<Sum>i\<in>A. a * x * y)"
proof -
  have "(\<Sum>i\<in>A. c) = (\<Sum>i\<in>A. (b * y))" using assms(5) by simp
  also have "... = (\<Sum>i\<in>A. (a * x * y))" using assms(4) by simp
  finally show ?thesis by simp
qed