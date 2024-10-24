lemma sqrt_limit:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = 9 \<longleftrightarrow> x = 81"