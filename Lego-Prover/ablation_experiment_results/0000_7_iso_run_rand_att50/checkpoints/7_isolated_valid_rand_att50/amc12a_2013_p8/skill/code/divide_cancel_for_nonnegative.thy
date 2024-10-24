lemma divide_cancel_for_nonnegative:
  fixes x a b c :: real
  assumes "x \<ge> 0" "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(3) by auto
  then have "x * a + x * (b / x) = c * x" by (simp add: distrib_left)
  thus ?thesis using assms(2) by (simp add: mult.commute)
qed