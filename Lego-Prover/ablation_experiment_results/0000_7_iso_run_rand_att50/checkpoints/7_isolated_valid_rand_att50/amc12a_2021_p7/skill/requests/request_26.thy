lemma substitute_and_solve:
  fixes x y :: real
  assumes "x * (1 + y) = 5" "y + 1 / x = 29"
  shows "y = 24 \<and> x = 1 / 5"