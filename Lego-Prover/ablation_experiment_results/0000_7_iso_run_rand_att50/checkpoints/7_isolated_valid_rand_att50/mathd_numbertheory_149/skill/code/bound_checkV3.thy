lemma bound_check:
  fixes n k c :: nat
  assumes "n < k"
  shows "n + c < k + c"
proof -
  have "n + c < k + c" using assms
  proof -
    have "n < k" using assms by simp
    hence "n + c < k + c" 
      by auto
    thus ?thesis by simp
  qed
  thus ?thesis by simp
qed