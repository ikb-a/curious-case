lemma bounds_on_sum:
  fixes n :: nat
  assumes "x + y = n" and "x \<ge> 0" and "y \<ge> 0"
  shows "0 \<le> x \<and> 0 \<le> y"
proof -
  from assms(2) have "x \<ge> 0" by simp
  from assms(3) have "y \<ge> 0" by simp
  show "0 \<le> x \<and> 0 \<le> y" by (simp add: assms(2) assms(3))
qed