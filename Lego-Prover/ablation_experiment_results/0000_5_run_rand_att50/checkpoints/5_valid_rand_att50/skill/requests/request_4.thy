lemma isolate_variable:
  fixes x y :: real
  assumes "x + y = c"
  shows "y = c - x"