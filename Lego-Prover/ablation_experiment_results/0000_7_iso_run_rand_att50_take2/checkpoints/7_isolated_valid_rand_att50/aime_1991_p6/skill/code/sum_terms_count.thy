lemma sum_terms_count:
  fixes n :: nat
  assumes "n = 91 - 19 + 1"
  shows "n = 73"
proof -
  show ?thesis by (simp add: assms)
qed