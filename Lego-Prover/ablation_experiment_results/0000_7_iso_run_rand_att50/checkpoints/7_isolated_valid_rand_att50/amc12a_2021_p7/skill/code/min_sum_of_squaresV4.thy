lemma min_sum_of_squares:
  fixes a b :: real
  assumes "a^2 \<ge> 0" "b^2 \<ge> 0"
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 + b^2 = a^2 + b^2"
    by simp
  also have "... \<ge> 0 + 0"
    using assms by auto
  finally show ?thesis 
    by auto
qed