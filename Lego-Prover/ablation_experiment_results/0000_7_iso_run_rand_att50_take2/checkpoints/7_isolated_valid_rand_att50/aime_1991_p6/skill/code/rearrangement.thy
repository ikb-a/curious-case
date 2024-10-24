lemma rearrangement:
  fixes n :: int and x :: nat
  assumes "x + 73 * n + 73 - x = 546"
  shows "73 * n - x = 473"
proof -
  have "73 * n + 73 = 546" using assms by simp
  then have "73 * n = 546 - 73" by (simp add: algebra_simps)
  then have "73 * n = 473" by simp
  then show ?thesis by presburger
qed