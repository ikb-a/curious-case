lemma floor_distribution:
  fixes n :: nat and r :: real
  assumes "n = floor r" "n + 1 = floor (r + 1)"
  shows "n + 1 - n = 1"
proof -
  from assms have "n + 1 - n = 1" by simp
  thus ?thesis by simp
qed