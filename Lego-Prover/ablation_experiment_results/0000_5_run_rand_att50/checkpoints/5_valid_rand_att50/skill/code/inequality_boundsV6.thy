lemma inequality_bounds:
  fixes n :: nat
  assumes "n \<ge> 7" "n \<le> 7"
  shows "n = 7"
proof -
  from assms(1) have "n \<ge> 7" by simp
  from assms(2) have "n \<le> 7" by simp
  then have "n = 7" using `n \<ge> 7` by (metis le_antisym)
  thus ?thesis by simp
qed