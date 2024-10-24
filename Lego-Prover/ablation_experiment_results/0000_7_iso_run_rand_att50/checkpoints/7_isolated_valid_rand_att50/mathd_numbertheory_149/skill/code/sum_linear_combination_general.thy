lemma sum_linear_combination_general:
  fixes x a b c :: real
  assumes "x > 0" "finite A" and "m * a + n * b / x = p"
  shows "(\<Sum>i\<in>A. m * a * x + n * b) = (\<Sum>i\<in>A. p * x)"
proof -
  have "(\<Sum>i\<in>A. x * (m * a + n * b / x)) = (\<Sum>i\<in>A. p * x)"
    using assms(2) by (metis assms(3) mult.commute)
  then have "(\<Sum>i\<in>A. x * m * a + x * (n * b / x)) = (\<Sum>i\<in>A. p * x)"
    by (simp add: distrib_left)
  then show ?thesis using assms(1) 
    by (auto simp: field_simps)
qed