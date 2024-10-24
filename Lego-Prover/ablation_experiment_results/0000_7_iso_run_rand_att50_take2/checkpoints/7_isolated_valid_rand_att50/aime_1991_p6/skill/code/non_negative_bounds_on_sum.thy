lemma non_negative_bounds_on_sum:
  fixes n :: nat and x y :: nat
  assumes "x + y = n" and "x \<ge> 0" and "y \<ge> 0"
  shows "0 \<le> x \<and> 0 \<le> y"
proof -
  have "x \<ge> 0" using assms(2) by simp
  have "y \<ge> 0" using assms(3) by simp
  show "0 \<le> x \<and> 0 \<le> y" by (simp add: \<open>x \<ge> 0\<close> \<open>y \<ge> 0\<close>)
qed