lemma cancel_div_generalized:
  fixes x a b c d :: real
  assumes "x > 0" "d > 0" "m * a + n * (b / x) = p"
  shows "m * x * a + n * b = p * x" and "d * (m * a + n * (b / x)) = d * p"
proof -
  have "x * (m * a + n * (b / x)) = p * x"
    using assms(3) by auto
  then have "x * m * a + x * (n * (b / x)) = p * x"
    by (simp add: distrib_left)
  then show "m * x * a + n * b = p * x"
    using assms(1) by (simp add: mult.commute)
  have "d * (m * a + n * (b / x)) = d * p"
    using assms(3) by (simp add: distrib_left)
  then show "d * (m * a + n * (b / x)) = d * p" by simp
qed