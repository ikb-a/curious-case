lemma bounds_on_sum:
  fixes n :: nat
  assumes "x + y = n" and "x \<ge> 0" and "y \<ge> 0"
  shows "0 \<le> x \<and> 0 \<le> y"
proof -
  from assms(2) have "0 \<le> x" by simp
  from assms(3) have "0 \<le> y" by simp
  show "0 \<le> x \<and> 0 \<le> y" by (simp add: \<open>0 \<le> x\<close> \<open>0 \<le> y\<close>)
qed