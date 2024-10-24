lemma linear_combination:
  fixes x e :: real
  assumes h0: "x + e = c"
  shows "e = c - x"
  using assms by auto