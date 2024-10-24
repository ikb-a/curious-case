lemma cancel_div_for_inequalities:
  fixes a b c :: real
  assumes "a > 0" "b < c"
  shows "a + b < a + c"
  using assms by simp