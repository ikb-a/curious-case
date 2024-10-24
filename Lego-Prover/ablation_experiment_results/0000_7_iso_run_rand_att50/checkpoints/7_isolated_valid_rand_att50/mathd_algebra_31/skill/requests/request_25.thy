lemma isolate_variable:
  fixes x :: real
  assumes "x + c = d"
  shows "x = d - c"