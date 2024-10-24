lemma sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = sqrt (max x 0)" 
    using assms by simp
  then show "sqrt x >= 0"
    by auto
qed