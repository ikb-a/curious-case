lemma min_sum_of_squares:
  fixes a b :: real
  assumes "a^2 \<ge> 0" and "b^2 \<ge> 0"
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 + b^2 \<ge> 0 + 0" 
    using assms by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed