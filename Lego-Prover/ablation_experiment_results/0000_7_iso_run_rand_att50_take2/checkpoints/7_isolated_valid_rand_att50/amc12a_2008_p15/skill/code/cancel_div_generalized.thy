lemma cancel_div_generalized:
  fixes x a b c d:: real
  assumes "x > 0" "c > 0" "a + b / x = c + d / x"
  shows "a * x + b = c * x + d"
proof -
  have "x * (a + b / x) = x * (c + d / x)"
    using assms(2) by (simp add: assms(3))
  then have "x * a + b = c * x + d" 
    by (metis add.commute assms(1) assms(3) cancel_div_with_conditions mult.commute)
  thus ?thesis using assms(1) by sos
qed