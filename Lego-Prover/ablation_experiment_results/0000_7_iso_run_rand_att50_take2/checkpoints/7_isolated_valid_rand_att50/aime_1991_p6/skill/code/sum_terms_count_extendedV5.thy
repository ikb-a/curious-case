lemma sum_terms_count_extended:
  fixes n m :: nat
  assumes "n = m + 1" "m = 91 - 19"
  shows "n = 73"
proof -
  have "m = 91 - 19" using assms(2) by simp
  hence "m = 72" by simp
  then show ?thesis using assms(1) by simp
qed