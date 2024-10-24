lemma unique_solution:
  fixes x y :: real
  assumes "f x = f y"
  shows "x = y"