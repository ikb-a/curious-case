lemma real_division:
  fixes a :: real and n :: nat
  assumes "n > 0"
  shows "a / real_of_nat n = a / (real n)"
  using assms by simp