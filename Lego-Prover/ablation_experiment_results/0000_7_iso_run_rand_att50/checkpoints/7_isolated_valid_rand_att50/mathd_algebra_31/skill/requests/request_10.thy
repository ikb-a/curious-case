lemma sqrt_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a = b \<longleftrightarrow> b^2 = a"