lemma cancle_div_general:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof (cases "x > 0")
  case True
  then show ?thesis using cancle_div_with_nonzero[of x a b c] by (metis assms(2))
next
  case False
  then have "x < 0" using assms(1) by auto
  then show ?thesis using cancle_div_with_neg[of x a b c] by (metis assms(2))
qed