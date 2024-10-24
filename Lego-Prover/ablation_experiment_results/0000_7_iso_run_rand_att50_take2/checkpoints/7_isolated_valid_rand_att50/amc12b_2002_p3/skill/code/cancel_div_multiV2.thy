lemma cancel_div_multi:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c" "c + d / x = e"
  shows "a * x + b = c * x" and "c * x + d = e * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  thus "a * x + b = c * x" using assms(1) by (simp add: mult.commute)
  have "x * (c + d / x) = e * x"
    using assms(3) by auto
  then have "x * c + x * (d / x) = e * x"
    by (simp add: distrib_left)
  thus "c * x + d = e * x" using assms(1) by (simp add: mult.commute)
qed