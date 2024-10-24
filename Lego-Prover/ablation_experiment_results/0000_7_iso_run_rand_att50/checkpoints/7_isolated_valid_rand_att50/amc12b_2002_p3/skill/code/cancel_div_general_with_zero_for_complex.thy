lemma cancel_div_general_with_zero_for_complex:
  fixes x a b c :: complex
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  thus ?thesis using assms(1) by (simp add: mult.commute)
qed