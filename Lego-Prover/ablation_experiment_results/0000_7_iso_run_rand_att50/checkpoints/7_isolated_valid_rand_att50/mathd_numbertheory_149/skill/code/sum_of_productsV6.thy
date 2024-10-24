lemma sum_of_products:
  fixes x a b :: real
  assumes "x > 0" "finite A" "b = a * x"
  shows "(\<Sum>i\<in>A. b) = card A * a * x"
  and "(\<Sum>i\<in>A. b * x) = card A * a * x^2"
proof -
  have "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. a * x)" using assms(3) by simp
  then have "(\<Sum>i\<in>A. b) = card A * a * x" using `finite A` by auto
  then show "(\<Sum>i\<in>A. b) = card A * a * x" by simp
next
  have "b * x = (a * x) * x" using assms(3) by simp
  then show "(\<Sum>i\<in>A. b * x) = card A * a * x^2" 
    using `finite A` by (metis assms(3) mult.assoc mult.commute mult.left_commute power2_eq_square sum_constant)
qed