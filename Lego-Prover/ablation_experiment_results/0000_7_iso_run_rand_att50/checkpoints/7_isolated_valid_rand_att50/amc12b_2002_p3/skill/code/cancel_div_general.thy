lemma cancel_div_general:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "b = x * (c - a)"
proof -
  have "a + b / x = c" using assms(2) by simp
  then have "b / x = c - a" by simp
  then have "b = x * (c - a)" using assms(1) by (auto simp: field_simps)
  then show ?thesis by simp
qed