lemma bounds_on_sum:
  fixes n :: nat
  assumes "x + y = n" and "x \<ge> 0" and "y \<ge> 0"
  shows "0 \<le> x \<and> 0 \<le> y"
proof -
  have "0 \<le> x" using assms(2) by auto
  have "0 \<le> y" using assms(3) by auto
  show "0 \<le> x \<and> 0 \<le> y" by auto
qed