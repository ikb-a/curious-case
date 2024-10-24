lemma find_max_n:
  fixes n :: nat
  assumes "n = 7" "m = 35"
  shows "n * 5 = m"
proof -
  have "n * 5 = 7 * 5" using assms(1) by simp
  also have "... = 35" by simp
  finally show "n * 5 = m" using assms(2) by simp
qed