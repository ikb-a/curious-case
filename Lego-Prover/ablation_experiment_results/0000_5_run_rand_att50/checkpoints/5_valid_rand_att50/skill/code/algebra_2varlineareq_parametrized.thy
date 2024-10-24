theorem algebra_2varlineareq_parametrized:
  fixes a b c d e :: complex
  assumes h0 : "a + b = c"
    and h1 : "2 * a + b = d"
  shows "b = c - a \<and> a = (d - c) / 1"
proof -
  have b_expr: "b = c - a" using h0 by (simp add: field_simps)
  have eq_substituted: "2 * a + (c - a) = d" using b_expr h1 by simp
  have eq_simplified: "a + c = d" using eq_substituted by (simp add: field_simps)
  have "a = d - c" using eq_simplified by (simp add: field_simps)
  thus ?thesis using b_expr by simp
qed