lemma cancel_div_specific:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "b = c * x - a * x"
proof -
  have "a + b / x = c" using assms(2) by simp
  then have "b / x = c - a" by simp
  then have "b = (c - a) * x" using assms(1) by (auto simp: field_simps)
  then show ?thesis by sos
qed