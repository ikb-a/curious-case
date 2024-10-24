lemma inequality_bounds:
  fixes n :: nat
  assumes "n >= 7" "n <= 7"
  shows "n = 7"
proof -
  from assms have "7 \<le> n" and "n \<le> 7" by auto
  then show ?thesis using le_antisym by blast
qed