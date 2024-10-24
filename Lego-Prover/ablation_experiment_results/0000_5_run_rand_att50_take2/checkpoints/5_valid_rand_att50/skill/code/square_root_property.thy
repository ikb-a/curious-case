lemma square_root_property:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt(x^2) = x"
proof -
  have "sqrt(x^2) = sqrt((abs x)^2)" using assms by (simp add: abs_if)
  also have "... = abs x" by auto
  finally show ?thesis using assms by (simp add: abs_if)
qed