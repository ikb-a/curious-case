lemma cancel_div_general:
  fixes x a b c :: real
  assumes "x > 0" "d > 0"
  shows "a + b / x = c \<Longrightarrow> a * x + b = c * x"
proof -
  assume "a + b / x = c"
  have "x * (a + b / x) = c * x" using `a + b / x = c` by auto
  then have "x * a + x * (b / x) = c * x" by (simp add: distrib_left)
  then show "a * x + b = c * x" using assms(1) by (simp add: mult.commute)
qed