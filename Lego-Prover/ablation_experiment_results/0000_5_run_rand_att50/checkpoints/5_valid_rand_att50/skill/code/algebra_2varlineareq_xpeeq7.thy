lemma algebra_2varlineareq_xpeeq7:
  fixes x e :: complex
  assumes h0: "x + e = 7"
  shows "e = 7 - x"
proof -
  show "e = 7 - x" using h0 by (auto simp: field_simps)
qed