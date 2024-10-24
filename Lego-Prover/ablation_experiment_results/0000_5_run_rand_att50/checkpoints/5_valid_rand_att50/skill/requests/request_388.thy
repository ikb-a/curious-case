lemma bounds_check:
  fixes N :: nat
  assumes "N = 24m + 21" "m < 2"
  shows "N < 50"
  using assms by auto