theorem algebra_2varlineareq_simple:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  thus ?thesis using eq_simplified e_expr by (metis add.commute algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4 h0 h1)
qed