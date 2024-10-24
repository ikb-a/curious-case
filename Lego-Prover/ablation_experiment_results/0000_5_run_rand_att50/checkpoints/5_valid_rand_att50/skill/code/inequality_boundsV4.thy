lemma inequality_bounds:
  fixes n :: nat
  assumes "n >= 7" "n <= 7"
  shows "n = 7"
proof -
  have "n >= 7" using assms(1) by simp
  have "n <= 7" using assms(2) by simp
  then show ?thesis using `n >= 7` by auto
qed