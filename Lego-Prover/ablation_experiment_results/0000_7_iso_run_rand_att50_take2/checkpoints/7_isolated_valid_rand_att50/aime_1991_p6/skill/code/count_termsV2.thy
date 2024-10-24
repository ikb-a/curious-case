lemma count_terms:
  fixes n :: nat
  assumes "n = 91 - 19 + 1"
  shows "n = 73"
proof -
  from assms have "n = 91 - 19 + 1" by simp
  then show ?thesis by simp
qed