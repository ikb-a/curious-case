theorem mathd_algebra_51:
  fixes a b :: real
  assumes "0 < a \<and> 0 < b"
    and "a + b = 35"
    and "a = (2/5) * b"
  shows "b - a = 15"
proof -
  have "b = 35 - a" using assms(2) by simp
  then have "a = (2/5) * (35 - a)" using assms(3) by simp
  then have "5 * a = 2 * (35 - a)" by (simp add: field_simps)
  hence "5 * a = 70 - 2 * a" by simp
  then have "5 * a + 2 * a = 70" by (simp add: field_simps)
  thus ?thesis using assms(1) by (smt (verit) assms(2))
qed