lemma sum_of_products:
  fixes x :: real
  assumes "x > 0" "finite A" "finite B" "b = a * x"
  shows "(\<Sum>i\<in>A. \<Sum>j\<in>B. b) = card B * (\<Sum>i\<in>A. b)"
proof -
  have "(\<Sum>i\<in>A. \<Sum>j\<in>B. b) = (\<Sum>i\<in>A. \<Sum>j\<in>B. a * x)" using assms(4) by simp
  also have "... = (\<Sum>i\<in>A. card B * (a * x))" by (simp add: sum_constant)
  finally show ?thesis using assms by auto
qed