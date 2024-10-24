lemma sum_of_products:
  fixes a b c :: real
  assumes "A \<noteq> {}" "b = a * c"
  shows "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. a * c)"
proof -
  have "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. (a * c))" using assms(2) by simp
  also have "... = a * (\<Sum>i\<in>A. c)" by (simp add: sum_distrib_left)
  also have "... = (\<Sum>i\<in>A. a * c)" by (simp add: sum_distrib_right)
  finally show ?thesis by simp
qed