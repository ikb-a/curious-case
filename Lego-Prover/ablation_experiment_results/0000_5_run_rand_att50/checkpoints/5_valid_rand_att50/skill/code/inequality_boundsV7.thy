lemma inequality_bounds:
  fixes n :: nat
  assumes "n \<ge> 7" "n \<le> 7"
  shows "n = 7"
proof -
  from assms have "7 \<le> n" by auto
  from assms have "n \<le> 7" by simp
  thus ?thesis using `7 \<le> n` `n \<le> 7` by auto
qed