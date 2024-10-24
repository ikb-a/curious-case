lemma cancel_division_with_positive:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + (b * (x / x)) = c * x" by sos
  thus ?thesis using assms(1) by (simp add: mult.commute)
qed