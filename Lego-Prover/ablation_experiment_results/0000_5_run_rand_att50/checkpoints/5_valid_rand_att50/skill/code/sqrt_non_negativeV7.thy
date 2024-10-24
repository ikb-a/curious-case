lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt (max x 0)"
    using assms by (metis max.absorb_iff2 max.commute)
  also have "sqrt (max x 0) \<ge> 0"
    using assms by (simp add: real_sqrt_ge_zero)
  finally show ?thesis .
qed