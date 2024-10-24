lemma linear_combination:
  fixes a b c d :: real
  assumes h0: "a + b = c"
  shows "b = c - a"
  using h0 by simp