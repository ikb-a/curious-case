lemma fixed_point_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x + 9) = 9 \<longleftrightarrow> x = 72"