lemma non_zero_cancel:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "x * a + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then show ?thesis using assms(1) by (simp add: distrib_left)
qed