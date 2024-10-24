lemma inequality_bounds:
  fixes n :: nat
  assumes "n >= 7" "n <= 7"
  shows "n = 7"
proof -
  have "n >= 7" using assms by simp
  hence "n = 7" using assms(2) by auto
  thus ?thesis by simp
qed