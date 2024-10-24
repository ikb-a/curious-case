lemma cancle_div_extended:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c" "d > 0"
  shows "a * x + b = c * x" 
    and "d * (a + b / x) = d * c"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  then show "a * x + b = c * x"
    using assms(1) by (simp add: mult.commute)
  have "d * (a + b / x) = d * c"
    using assms(2) by (simp add: distrib_right)
  thus "d * (a + b / x) = d * c" by simp
qed