lemma sqrt_convergence:
  fixes x :: real
  assumes "x > 0"
  shows "sqrt x = lim (u n) \<longrightarrow> u (n + 1) = sqrt (x + u n)"