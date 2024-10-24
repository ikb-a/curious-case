lemma division_by_nat:
  fixes x :: real and n :: nat
  assumes "n > 0"
  shows "x / real n = x / (real_of_nat n)"
  using assms by simp