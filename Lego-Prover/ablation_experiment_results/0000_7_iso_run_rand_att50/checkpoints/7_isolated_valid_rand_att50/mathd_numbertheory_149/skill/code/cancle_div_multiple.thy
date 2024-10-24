lemma cancle_div_multiple:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c" "d > 0"
  shows "d * (a * x + b) = d * (c * x)"
proof -
  have "d * (a * x + b) = d * (c * x)"
    using cancle_div_general[OF assms(1-2)] by auto
  then show ?thesis by simp
qed