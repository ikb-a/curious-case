lemma generalized_cancel_divide:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c + d / x"
  shows "a * x + b = c * x + d"
proof -
  have "x * (a + b / x) = x * (c + d / x)" using assms(2) by auto
  then have "x * a + b = x * c + d" using assms(1) by (simp add: distrib_left)
  thus ?thesis by (simp add: mult.commute)
qed