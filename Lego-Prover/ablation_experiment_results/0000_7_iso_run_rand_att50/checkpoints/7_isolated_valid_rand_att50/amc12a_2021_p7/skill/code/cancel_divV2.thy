lemma cancel_div:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "a + b / x = c" using assms(2) by auto
  then have "x * (a + b / x) = x * c" 
    using assms(1) by (simp add: mult_left_mono)
  then have "x * a + x * (b / x) = x * c" 
    by (simp add: distrib_left)
  then have "x * a + b = x * c" 
    using assms(1) by (simp add: field_simps)
  thus ?thesis 
    by (simp add: mult.commute)
qed