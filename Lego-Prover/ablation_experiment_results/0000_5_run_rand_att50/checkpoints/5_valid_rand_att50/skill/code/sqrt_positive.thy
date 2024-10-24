lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = sqrt (max x 0)"
    using assms by (metis max.absorb_iff2 max.commute)
  also have "max x 0 = x" 
    using assms by (simp add: max_def)
  finally have "sqrt x = sqrt x" by simp
  thus ?thesis 
    using assms real_sqrt_ge_zero by auto
qed