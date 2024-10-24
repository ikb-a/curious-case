lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  from assms have "0 \<le> x" by simp
  then show "sqrt x \<ge> 0" using real_sqrt_ge_zero by simp
qed