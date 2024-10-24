lemma cancel_div_generalized:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + b = c * x" using assms(1) by sos
  then show ?thesis by sos
qed