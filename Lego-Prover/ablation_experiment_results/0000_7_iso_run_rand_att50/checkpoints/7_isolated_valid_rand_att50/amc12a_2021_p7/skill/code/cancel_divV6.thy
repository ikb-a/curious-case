lemma cancel_div:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  from assms(2) have "b / x = c - a" 
    by (simp add: algebra_simps)
  then have "b = (c - a) * x" 
    using assms(1) by (auto simp: field_simps)
  then have "a * x + b = a * x + (c - a) * x" 
    by simp
  also have "... = a * x + c * x - a * x" 
    by (simp add: algebra_simps)
  finally show ?thesis 
    by simp
qed