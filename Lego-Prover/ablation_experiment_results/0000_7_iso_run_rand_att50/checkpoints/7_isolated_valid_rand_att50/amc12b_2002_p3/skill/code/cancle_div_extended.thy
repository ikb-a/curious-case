lemma cancle_div_extended:
  fixes x a b c d :: real
  assumes "x > 0" "d > 0" "a + b / x = c" "a + b / d = c"
  shows "a * x + b = c * x" and "a * d + b = c * d"
proof -
  have "x * (a + b / x) = c * x"
    using assms(3) by auto
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  then show "a * x + b = c * x"
    using assms(1) by (simp add: mult.commute)
  have "d * (a + b / d) = c * d"
    using assms(4) by auto
  then have "d * a + d * (b / d) = c * d"
    by (simp add: distrib_left)
  then show "a * d + b = c * d"
    using assms(2) by (simp add: mult.commute)
qed