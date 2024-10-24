lemma equality_condition_for_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 = 0"
  shows "x = 0 \<and> y = 0"
proof -
  have "x^2 \<ge> 0" by (simp)
  have "y^2 \<ge> 0" by (simp)
  from assms have "x^2 + y^2 = 0" 
    by simp
  then have "x^2 + y^2 = 0 \<Longrightarrow> x^2 = 0 \<and> y^2 = 0" 
    by auto
  then show "x = 0 \<and> y = 0" 
    by (metis add_cancel_left_left assms linorder_linear power2_less_eq_zero_iff sum_power2_eq_zero_iff zero_eq_power2)
qed