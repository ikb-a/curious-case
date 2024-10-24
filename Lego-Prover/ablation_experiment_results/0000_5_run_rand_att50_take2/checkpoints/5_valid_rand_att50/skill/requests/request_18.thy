lemma nested_sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "\<forall> n. sqrt (x + sqrt (x + sqrt (x + ...))) = sqrt (x + 9) \<longrightarrow> (\<forall> n. sqrt (x + sqrt (x + ...)) = 9)"