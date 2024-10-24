lemma sum_of_products_with_variable_weight:
  fixes x a b c d :: real
  assumes "x > 0" "finite A" "b = a * x" "d = c * x"
  shows "(\<Sum>i\<in>A. b * d) = (\<Sum>i\<in>A. a * x * c * x)"
proof -
  have "(\<Sum>i\<in>A. b * d) = (\<Sum>i\<in>A. (a * x) * (c * x))" using assms(3, 4) by simp
  also have "... = (\<Sum>i\<in>A. a * c * x^2)" by (metis mult.assoc mult.left_commute power2_eq_square)
  finally show ?thesis by (metis \<open>(\<Sum>i\<in>A. b * d) = (\<Sum>i\<in>A. a * x * (c * x))\<close> ab_semigroup_mult_class.mult_ac(1))
qed