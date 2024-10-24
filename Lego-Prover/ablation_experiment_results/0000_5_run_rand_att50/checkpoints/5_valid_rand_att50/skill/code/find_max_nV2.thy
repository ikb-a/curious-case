lemma find_max_n:
  fixes n :: nat
  assumes "n = 7" "m = 35"
  shows "n = 7"
proof -
  have "n = 7" using assms(1) by simp
  thus ?thesis by simp
qed