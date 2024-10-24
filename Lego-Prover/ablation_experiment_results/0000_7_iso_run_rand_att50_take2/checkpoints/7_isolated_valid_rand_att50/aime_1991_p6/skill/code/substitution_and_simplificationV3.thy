lemma substitution_and_simplification:
  fixes a b n :: int
  assumes "a + b = 73" and "a * n + b * (n + 1) = 546"
  shows "73 * n - a = 473"
proof -
  have "b = 73 - a" using assms(1) by simp
  then have "a * n + (73 - a) * (n + 1) = 546" using assms(2) by simp
  hence "a * n + (73 - a) * n + (73 - a) = 546" by (simp add: algebra_simps)
  thus "73 * n - a = 473" by (simp add: algebra_simps)
qed