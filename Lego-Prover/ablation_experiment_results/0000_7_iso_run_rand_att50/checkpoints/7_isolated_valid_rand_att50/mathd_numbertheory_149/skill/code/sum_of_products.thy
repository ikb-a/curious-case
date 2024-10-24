lemma sum_of_products:
  fixes A :: "'a set" and x a b c :: real
  assumes "x > 0" "finite A" and "a + b / x = c"
  shows "(\<Sum>i\<in>A. a * x + b) = (\<Sum>i\<in>A. c * x)"
proof -
  have "(\<Sum>i\<in>A. x * (a + b / x)) = (\<Sum>i\<in>A. c * x)"
    using assms(2) by (metis assms(3) mult.commute)
  then have "(\<Sum>i\<in>A. x * a + x * (b / x)) = (\<Sum>i\<in>A. c * x)"
    by (simp add: distrib_left)
  then show ?thesis using assms(1) 
    by (simp add: mult.commute)
qed