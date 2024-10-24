lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n" "x \<ge> 0" "y \<ge> 0"
  shows "x \<le> n \<and> y \<le> n"
proof -
  have "x \<le> n" using assms
  proof -
    have "y = n - x" using assms(1) by simp
    also have "y \<ge> 0" using assms(2) by simp
    ultimately have "n - x \<ge> 0" by (metis add_nonneg_nonneg)
    thus ?thesis by (metis \<open>y = n - x\<close> add_less_same_cancel1 assms(1) diff_is_0_eq less_numeral_extra(3) linorder_not_less nle_le)
  qed
  moreover have "y \<le> n" using assms
  proof -
    have "x = n - y" using assms(1) by simp
    also have "x \<ge> 0" using assms(2) by simp
    ultimately have "n - y \<ge> 0" by (metis add_nonneg_nonneg)
    thus ?thesis by (metis \<open>x = n - y\<close> add_less_same_cancel2 assms(1) diff_is_0_eq less_numeral_extra(3) linorder_not_less nle_le)
  qed
  ultimately show ?thesis by simp
qed