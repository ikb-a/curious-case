lemma sum_terms_count_extended:
  fixes n :: nat
  assumes "n = a - b + 1" "a = 91" "b = 19"
  shows "n = 73"
proof -
  have "n = 91 - 19 + 1" using assms(1) assms(2) assms(3) by auto
  then show ?thesis by simp
qed