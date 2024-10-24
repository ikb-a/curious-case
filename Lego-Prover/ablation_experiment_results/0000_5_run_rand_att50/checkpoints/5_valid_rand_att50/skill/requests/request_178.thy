lemma sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = 0 \<longleftrightarrow> x = 0"