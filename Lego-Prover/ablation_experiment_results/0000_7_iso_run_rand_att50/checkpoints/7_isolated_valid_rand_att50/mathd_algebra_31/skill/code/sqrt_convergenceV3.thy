lemma sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = sqrt (if x < 0 then 0 else x)" 
    by (metis assms less_eq_real_def not_less)
  then show "sqrt x >= 0" 
    using assms by auto
qed