lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n" "x \<ge> 0" "y \<ge> 0"
  shows "x \<le> n \<and> y \<le> n"
proof -
  have "x \<le> n" using assms(1) assms(2) 
  proof -
    have "y = n - x" using assms(1) by simp
    moreover have "n - x \<ge> 0" using assms(2) by (simp add: nat_le_linear)
    ultimately show "x \<le> n" by (metis add_less_same_cancel1 assms(1) diff_is_0_eq less_numeral_extra(3) linorder_not_less nle_le)
  qed
  have "y \<le> n" using assms(1) assms(3)
  proof -
    have "x = n - y" using assms(1) by simp
    moreover have "n - y \<ge> 0" using assms(3) by (simp add: nat_le_linear)
    ultimately show "y \<le> n" by (metis add_less_same_cancel2 assms(1) diff_is_0_eq less_numeral_extra(3) linorder_not_less nle_le)
  qed
  thus ?thesis by (metis \<open>x \<le> n\<close>)
qed