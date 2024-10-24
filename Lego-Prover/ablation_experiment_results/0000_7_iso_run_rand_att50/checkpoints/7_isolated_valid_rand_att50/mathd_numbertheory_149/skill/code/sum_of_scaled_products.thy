lemma sum_of_scaled_products:
  fixes A :: "'a set" and x a b c d :: real
  assumes "x > 0" "finite A" and "a + b / x = c" and "d = x * a + b"
  shows "(\<Sum>i\<in>A. d) = (\<Sum>i\<in>A. c * x)"
proof -
  have "(\<Sum>i\<in>A. d) = (\<Sum>i\<in>A. (x * a + b))" using assms(4) by simp
  also have "... = (\<Sum>i\<in>A. (x * (a + b / x)))" using assms(1) by (auto simp: field_simps)
  also have "... = (\<Sum>i\<in>A. (c * x))" using assms(3) by (metis assms(1) mult.commute)
  finally show ?thesis .
qed