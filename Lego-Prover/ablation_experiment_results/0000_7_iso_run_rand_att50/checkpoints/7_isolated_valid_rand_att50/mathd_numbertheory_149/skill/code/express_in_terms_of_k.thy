lemma express_in_terms_of_k:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N = 8 * k + 5"
proof -
  show ?thesis using assms by simp
qed