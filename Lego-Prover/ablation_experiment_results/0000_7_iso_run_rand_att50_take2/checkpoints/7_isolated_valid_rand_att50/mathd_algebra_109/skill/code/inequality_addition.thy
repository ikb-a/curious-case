lemma inequality_addition:
  fixes a b c d :: real
  assumes h0: "a < b" and h1: "c < d"
  shows "a + c < b + d"
  using h0 h1 by auto