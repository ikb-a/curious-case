lemma sqrt_equation:
  fixes x :: real
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"
  by (metis sqrt_eq_0_iff)