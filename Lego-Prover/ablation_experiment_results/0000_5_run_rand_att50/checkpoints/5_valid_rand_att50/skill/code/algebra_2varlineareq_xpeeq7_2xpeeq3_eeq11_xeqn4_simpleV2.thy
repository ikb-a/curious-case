lemma algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simple:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e + x = 7"
proof -
  show ?thesis using h0 by (auto simp: field_simps)
qed