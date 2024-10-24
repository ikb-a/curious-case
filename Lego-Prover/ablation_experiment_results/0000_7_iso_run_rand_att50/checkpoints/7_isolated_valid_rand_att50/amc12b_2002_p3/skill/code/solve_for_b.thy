lemma solve_for_b:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "b = x * (c - a)"
  using cancel_div_generalized[of x a b c] assms by simp