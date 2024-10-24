lemma sum_of_weights_variable:
  fixes x a b c d :: real
  assumes "x > 0" "finite A" "b = a * x" "c = d * x"
  shows "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. a * d * x^2)"
proof -
  have "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. (a * x) * (d * x))" using assms(3) and assms(4) by simp
  also have "... = (\<Sum>i\<in>A. a * d * x^2)" by (metis mult.assoc mult.left_commute power2_eq_square)
  finally show ?thesis by simp
qed