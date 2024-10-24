lemma sqrt_sum_non_negative:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x + y) \<ge> 0"
proof -
  have "x + y \<ge> 0" using assms by simp
  then show "sqrt(x + y) \<ge> 0" using sqrt_non_negative by simp
qed