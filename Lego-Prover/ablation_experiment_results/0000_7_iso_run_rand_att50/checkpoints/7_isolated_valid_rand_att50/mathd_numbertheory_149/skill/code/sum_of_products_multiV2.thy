lemma sum_of_products_multi:
  fixes x a b :: real
  assumes "x > 0" "finite A" "b = a * x"
  shows "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. a * x)"
  and "(\<Sum>i\<in>A. b * x) = (\<Sum>i\<in>A. a * x^2)"
proof -
  have "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. a * x)" using assms(3) by simp
  then show "(\<Sum>i\<in>A. b) = (\<Sum>i\<in>A. a * x)" by simp
next
  have "b * x = (a * x) * x" using assms(3) by simp
  then show "(\<Sum>i\<in>A. b * x) = (\<Sum>i\<in>A. a * x^2)" 
    using `finite A` by (metis mult.assoc power2_eq_square sum.cong)
qed