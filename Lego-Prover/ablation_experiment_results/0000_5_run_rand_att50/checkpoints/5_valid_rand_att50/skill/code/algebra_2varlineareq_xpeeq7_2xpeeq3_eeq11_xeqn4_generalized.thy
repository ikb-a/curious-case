theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_generalized:
  fixes x e :: "complex"
  assumes h0: "x + e = a"
    and h1: "2 * x + e = b"
  shows "e = a + a - b \<and> x = (b - a) / 1"
proof -
  have e_expr: "e = a - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (a - x) = b" using e_expr h1 by simp
  have eq_simplified: "x + a = b" using eq_substituted by simp
  then show ?thesis using e_expr by auto
qed