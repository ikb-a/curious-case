lemma equality_condition_for_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 = 0"
  shows "x = 0 \<and> y = 0"