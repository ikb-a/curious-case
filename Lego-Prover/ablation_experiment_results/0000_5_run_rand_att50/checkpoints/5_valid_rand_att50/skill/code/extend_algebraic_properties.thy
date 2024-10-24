lemma extend_algebraic_properties:
  fixes x y e :: complex
  assumes h0: "x + e = 7"
    and h1: "2 * x + e = 3"
    and h2: "e = 11"
  shows "x = -4"
proof -
  have e_value: "e = 7 - x" using h0 by (auto simp: field_simps)
  have "7 - x = 11" using h2 by (metis e_value)
  thus ?thesis by (smt (verit) algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4 h0 h1)
qed