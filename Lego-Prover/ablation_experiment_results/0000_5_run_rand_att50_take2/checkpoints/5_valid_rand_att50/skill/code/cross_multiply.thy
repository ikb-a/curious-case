lemma cross_multiply:
  fixes x y :: real
  assumes "x - y = (2/y - 2/x)"
  shows "(x - y) * (x * y) = 2 * (x - y)"
proof -
  have "x - y = (2/y - 2/x)" using assms by simp
  then have "x - y = (2 * x - 2 * y) / (x * y)" 
    by sos
  then have "(x - y) * (x * y) = (2 * x - 2 * y)" 
    using field_simps by auto
  thus ?thesis 
    by (simp add: algebra_simps)
qed