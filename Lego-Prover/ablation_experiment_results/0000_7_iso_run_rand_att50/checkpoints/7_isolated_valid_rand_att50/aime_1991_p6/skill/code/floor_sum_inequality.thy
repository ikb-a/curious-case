lemma floor_sum_inequality:
  fixes a b r :: real
  assumes "a + b = n" "7 * a + 8 * b = S"
  shows "b = (S - 7 * n) / 1"
proof -
  from assms(1) have "b = n - a" by auto
  then have "7 * a + 8 * (n - a) = S" using assms(2) by (simp add: algebra_simps)
  then have "7 * a + 8 * n - 8 * a = S" by simp
  then have "(7 - 8) * a + 8 * n = S" by simp
  then have "-a + 8 * n = S" by simp
  then have "a = 8 * n - S" by (simp add: algebra_simps)
  then have "b = n - (8 * n - S)" using `b = n - a` by simp
  then have "b = n - 8 * n + S" by (simp add: algebra_simps)
  then have "b = (S - 7 * n)" by simp
  thus ?thesis by (simp add: algebra_simps)
qed