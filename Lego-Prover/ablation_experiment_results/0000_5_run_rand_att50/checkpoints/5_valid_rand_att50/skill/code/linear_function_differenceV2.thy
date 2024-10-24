lemma linear_function_difference:
  fixes m c :: real and x y :: real
  assumes "f x = m * x + c" and "f y = m * y + c"
  shows "f y - f x = m * (y - x)"
proof -
  have "f y - f x = (m * y + c) - (m * x + c)"
    using assms by simp
  then have "f y - f x = (m * y + c - m * x - c)"
    by (simp)
  then have "f y - f x = m * y - m * x"
    by (simp add: algebra_simps)
  then show ?thesis by (simp add: algebra_simps)
qed