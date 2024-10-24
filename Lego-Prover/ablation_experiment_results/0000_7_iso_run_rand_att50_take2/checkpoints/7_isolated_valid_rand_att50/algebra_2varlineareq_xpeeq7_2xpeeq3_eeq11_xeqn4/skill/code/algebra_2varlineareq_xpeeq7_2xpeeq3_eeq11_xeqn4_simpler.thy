lemma algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simpler:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
  shows "e = 7 - x"
  using h0 by (auto simp: field_simps)