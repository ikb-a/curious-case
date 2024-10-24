lemma sum_terms_count_generalized:
  fixes n a b c :: nat
  assumes "n = a - b + c"
  shows "n = (a - b + c)"
proof -
  show ?thesis using assms by simp
qed