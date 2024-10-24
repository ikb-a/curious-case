lemma cancel_div_with_multiple_variables:
  fixes x a b c d e f :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "a + b / x = c" "d + e / y = f"
  shows "b = x * (c - a) \<and> e = y * (f - d)"
proof -
  have "a + b / x = c" using assms(3) by simp
  then have "b / x = c - a" by simp
  then have "b = x * (c - a)" using assms(1) by (auto simp: field_simps)
  have "d + e / y = f" using assms(4) by simp
  then have "e / y = f - d" by simp
  then have "e = y * (f - d)" using assms(2) by (auto simp: field_simps)
  thus ?thesis by (metis \<open>b = x * (c - a)\<close>)
qed