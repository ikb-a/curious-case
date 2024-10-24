lemma sum_terms_count_multi:
  fixes n m :: nat
  assumes "m = b - a + 1" and "a \<le> b"
  shows "m = b - a + 1"
proof -
  show ?thesis by (simp add: assms)
qed