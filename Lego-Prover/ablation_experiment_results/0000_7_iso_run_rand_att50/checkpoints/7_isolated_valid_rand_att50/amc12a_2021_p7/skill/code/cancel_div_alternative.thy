lemma cancel_div_alternative:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "a + b / x = c" using assms(2) by simp
  then have "b = (c - a) * x" using assms(1) by auto
  hence "b * x = (c - a) * x^2" by sos
  have "a * x + b = a * x + (c - a) * x" 
    by (simp add: `b = (c - a) * x`)
  also have "... = (a + (c - a)) * x"
    by (simp add: algebra_simps)
  also have "... = c * x"
    by (simp add: algebra_simps)
  finally show ?thesis by simp
qed