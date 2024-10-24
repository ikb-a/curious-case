lemma cancel_div_multi:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "x * a + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + b = c * x"
    using assms(1) by (simp add: distrib_left)
  then show ?thesis by simp
qed