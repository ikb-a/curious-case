lemma sqrt_eq_special_case:
  fixes y :: real
  assumes "sqrt (x + 9) = y" "y = 9"
  shows "x = 72"
  using sqrt_eq_extended[of "x" "9"] assms by simp