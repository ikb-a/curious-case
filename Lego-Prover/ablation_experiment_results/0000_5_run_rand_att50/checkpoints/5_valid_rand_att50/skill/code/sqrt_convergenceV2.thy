lemma sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = 0 \<longleftrightarrow> x = 0"
proof -
  have "sqrt x = 0 \<Longrightarrow> x = 0" 
  proof -
    assume "sqrt x = 0"
    then have "x = (sqrt x)^2" by auto
    thus ?thesis using `sqrt x = 0` by (simp add: power2_eq_iff_nonneg)
  qed
  have "x = 0 \<Longrightarrow> sqrt x = 0" 
  proof -
    assume "x = 0"
    thus ?thesis by simp
  qed
  show "sqrt x = 0 \<longleftrightarrow> x = 0" 
    by (metis `x >= 0` `sqrt x = 0 \<Longrightarrow> x = 0` `x = 0 \<Longrightarrow> sqrt x = 0`)
qed