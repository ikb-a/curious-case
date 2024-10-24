lemma sum_of_products:
  fixes x a b c :: real
  assumes "x > 0" "finite A" "b = a * x"
  shows "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. a * x)"
proof -
  have "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. a * x)" using assms(3) by simp
  then show ?thesis by simp
qed