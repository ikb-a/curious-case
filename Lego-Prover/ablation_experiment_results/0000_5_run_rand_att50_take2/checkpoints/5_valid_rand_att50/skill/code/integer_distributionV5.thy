lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n" "x \<ge> 0" "y \<ge> 0"
  shows "x \<le> n \<and> y \<le> n"
proof -
  have "x \<le> n"
  proof -
    have "y = n - x" using assms(1) by simp
    then show "x \<le> n" using assms(2) by (metis add.right_neutral assms(1) diff_is_0_eq dual_order.refl nle_le)
  qed
  have "y \<le> n"
  proof -
    have "x = n - y" using assms(1) by simp
    then show "y \<le> n" using assms(3) by (metis add_0 assms(1) diff_is_0_eq nle_le order_refl)
  qed
  thus ?thesis by (metis \<open>x \<le> n\<close>)
qed