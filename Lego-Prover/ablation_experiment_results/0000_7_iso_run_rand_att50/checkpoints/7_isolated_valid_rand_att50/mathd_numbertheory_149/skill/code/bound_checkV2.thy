lemma bound_check:
  fixes n k c :: nat
  assumes "n < k"
  shows "n + c < k + c"
proof -
  have "n + c < k + c" using assms
  proof -
    have "n < k" by (simp add: assms)
    then have "n + c + 0 < k + c + 0" by auto
    thus ?thesis by simp
  qed
  thus ?thesis by simp
qed