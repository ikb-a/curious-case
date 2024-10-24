lemma non_negativity_of_sums:
  fixes n :: nat
  assumes "x + y = n" and "x \<ge> 0" and "y \<ge> 0"
  shows "x \<ge> 0 \<and> y \<ge> 0"
proof -
  have "x \<ge> 0" using assms(2) by simp
  have "y \<ge> 0" using assms(3) by simp
  thus ?thesis by auto
qed