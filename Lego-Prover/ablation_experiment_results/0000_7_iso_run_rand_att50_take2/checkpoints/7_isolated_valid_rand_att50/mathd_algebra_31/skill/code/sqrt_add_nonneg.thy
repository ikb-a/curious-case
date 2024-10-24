lemma sqrt_add_nonneg:
  fixes a b :: real
  assumes "0 \<le> a" "0 \<le> b"
  shows "sqrt (a + b) \<ge> 0"
proof -
  have "a + b \<ge> 0" using assms by simp
  then show ?thesis by (simp add: sqrt_nonneg)
qed