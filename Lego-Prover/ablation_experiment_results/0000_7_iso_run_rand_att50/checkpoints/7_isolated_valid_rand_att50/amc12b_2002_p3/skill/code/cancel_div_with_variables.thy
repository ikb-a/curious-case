lemma cancel_div_with_variables:
  fixes x a b c d :: real
  assumes "x \<noteq> 0" "a + b / x = c" "d = c - a"
  shows "b = x * d"
proof -
  have "a + b / x = c" using assms(2) by simp
  then have "b / x = c - a" by simp
  then have "b = x * (c - a)" using assms(1) by (auto simp: field_simps)
  also have "... = x * d" using assms(3) by simp
  finally show ?thesis by simp
qed