lemma sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = 0 \<longleftrightarrow> x = 0"
proof -
  have "sqrt x = 0 \<Longrightarrow> x = 0" 
  proof -
    assume "sqrt x = 0"
    have "x = (sqrt x)^2" by (metis \<open>sqrt x = 0\<close> abs_0_eq assms nless_le one_add_one power2_eq_iff_nonneg power_abs real_sqrt_eq_iff real_sqrt_eq_zero_cancel_iff real_sqrt_pow2 real_sqrt_power zero_less_abs_iff)
    thus ?thesis using `sqrt x = 0` by simp
  qed
  have "x = 0 \<Longrightarrow> sqrt x = 0" 
  proof -
    assume "x = 0"
    thus ?thesis by simp
  qed
  show "sqrt x = 0 \<longleftrightarrow> x = 0" 
    by (metis `x >= 0` `sqrt x = 0 \<Longrightarrow> x = 0` `x = 0 \<Longrightarrow> sqrt x = 0` assms)
qed