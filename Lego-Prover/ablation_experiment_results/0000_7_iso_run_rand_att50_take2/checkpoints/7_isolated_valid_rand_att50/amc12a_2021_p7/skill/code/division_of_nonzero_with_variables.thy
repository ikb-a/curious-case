lemma division_of_nonzero_with_variables:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0"
  shows "(x * y) / x = y" and "(x * y) / y = x"
proof -
  have "(x * y) / x = y" using assms by (simp add: field_simps)
  thus "(x * y) / x = y" by simp
next
  have "(x * y) / y = x" using assms by (simp add: field_simps)
  thus "(x * y) / y = x" by simp
qed