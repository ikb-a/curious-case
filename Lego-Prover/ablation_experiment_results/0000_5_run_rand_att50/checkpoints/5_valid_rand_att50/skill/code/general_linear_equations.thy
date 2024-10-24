lemma general_linear_equations:
  fixes a b c d :: complex
  assumes h0: "a + b = c"
    and h1: "2 * a + b = d"
  shows "b = c - a \<and> a = (d - c) / 1"
proof -
  have b_expr: "b = c - a" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * a + (c - a) = d" using b_expr h1 by simp
  have eq_simplified: "a + c = d" using eq_substituted by simp
  then have a_value: "a = d - c" by (simp add: field_simps)
  thus ?thesis using b_expr a_value by auto
qed