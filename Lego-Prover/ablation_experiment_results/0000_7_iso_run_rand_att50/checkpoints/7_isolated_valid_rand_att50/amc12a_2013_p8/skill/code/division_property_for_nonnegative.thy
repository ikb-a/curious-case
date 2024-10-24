lemma division_property_for_nonnegative:
  fixes x a b c :: real
  assumes "x \<ge> 0" "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(3) by auto
  then have "x * a + b = c * x" by (smt (verit) assms(1) assms(2) assms(3) division_property_for_positive mult.commute order_le_imp_less_or_eq)
  thus ?thesis using assms(2) by (simp add: mult.commute)
qed