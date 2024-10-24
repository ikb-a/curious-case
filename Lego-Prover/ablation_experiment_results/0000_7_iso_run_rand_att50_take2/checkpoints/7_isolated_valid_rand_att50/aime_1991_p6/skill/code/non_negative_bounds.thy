lemma non_negative_bounds:
  fixes x y :: nat
  assumes "x + y = n" and "0 \<le> x" and "0 \<le> y"
  shows "x \<ge> 0 \<and> y \<ge> 0"
proof -
  have "0 \<le> x" using assms(2) by simp
  have "0 \<le> y" using assms(3) by simp
  show "x \<ge> 0 \<and> y \<ge> 0" by (simp add: \<open>0 \<le> x\<close> \<open>0 \<le> y\<close>)
qed