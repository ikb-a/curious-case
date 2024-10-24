lemma non_negative_sums:
  fixes a b :: nat
  assumes "a + b = n" and "a \<ge> 0" and "b \<ge> 0"
  shows "0 \<le> a \<and> 0 \<le> b"
proof -
  from assms(2) have "0 \<le> a" by simp
  from assms(3) have "0 \<le> b" by simp
  show "0 \<le> a \<and> 0 \<le> b" by (simp add: \<open>0 \<le> a\<close> \<open>0 \<le> b\<close>)
qed