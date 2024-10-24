lemma sum_terms_count_evolved:
  fixes n m :: nat
  assumes "n = m - 19 + 1" "m = 91"
  shows "n = 73"
proof -
  have "n = 91 - 19 + 1" using assms(1) assms(2) by simp
  thus ?thesis by simp
qed