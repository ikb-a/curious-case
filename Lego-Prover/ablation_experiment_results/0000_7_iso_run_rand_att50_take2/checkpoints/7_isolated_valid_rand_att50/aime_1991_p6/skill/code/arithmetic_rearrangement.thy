lemma arithmetic_rearrangement:
  fixes n :: int and x :: nat
  assumes "x + 73 * n + 73 - x = 546"
  shows "n = (546 - 73) div 73"
proof -
  have "73 * n + 73 = 546" using assms by simp
  then have "73 * n = 546 - 73" by (simp add: algebra_simps)
  then show ?thesis by auto 
qed