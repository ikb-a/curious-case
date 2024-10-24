lemma sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x + sqrt (x + sqrt (x + ...)) ) = sqrt (x + 9) \<longleftrightarrow> x + 9 = 81"