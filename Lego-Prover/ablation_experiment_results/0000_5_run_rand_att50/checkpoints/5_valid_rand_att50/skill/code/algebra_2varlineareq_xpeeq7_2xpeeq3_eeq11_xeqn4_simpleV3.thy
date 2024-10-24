theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simple:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "2 * x - x + 7 = 3" using eq_substituted by simp
  have "x + 7 = 3" using eq_simplified by simp
  then show "x = -4" by (simp add: field_simps)
qed