lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n" "x \<ge> 0" "y \<ge> 0"
  shows "x \<le> n \<and> y \<le> n"
proof -
  have "x \<le> n" using assms
  proof -
    have "y = n - x" using assms by simp
    also have "y \<ge> 0" using assms(2) by simp
    ultimately have "n - x \<ge> 0" by (simp add: nat_le_linear)
    hence "x \<le> n" by (metis \<open>y = n - x\<close> add_less_same_cancel1 assms(1) diff_is_0_eq less_numeral_extra(3) linorder_not_less nle_le)
    thus ?thesis by simp
  qed
  moreover have "y \<le> n" using assms
  proof -
    have "x = n - y" using assms by simp
    also have "x \<ge> 0" using assms(3) by simp
    ultimately have "n - y \<ge> 0" by (simp add: nat_le_linear)
    hence "y \<le> n" by (metis \<open>x = n - y\<close> add_less_same_cancel2 assms(1) diff_is_0_eq less_numeral_extra(3) linorder_not_less nle_le)
    thus ?thesis by simp
  qed
  ultimately show ?thesis by simp
qed