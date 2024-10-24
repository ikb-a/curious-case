lemma inverse_property:
  fixes x :: real
  assumes "x \<noteq> 0"
  shows "x * (1 / x) = 1"
  using assms by auto