lemma cancel_div_multi:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c" "c + d / x = e"
  shows "a * x + b = c * x" and "c * x + d = e * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + b = c * x" using assms(1) by (simp add: distrib_left)
  thus "a * x + b = c * x" by sos
  have "x * (c + d / x) = e * x"
    using assms(3) by auto
  then have "c * x + d = e * x" using assms(1) by sos
  thus "c * x + d = e * x" by simp
qed