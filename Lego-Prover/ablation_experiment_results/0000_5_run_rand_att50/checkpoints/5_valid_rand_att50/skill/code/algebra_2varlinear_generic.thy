lemma algebra_2varlinear_generic:
  fixes a b c d :: complex
  assumes h0 : "a + b = c"
    and h1 : "2 * a + b = d"
  shows "b = c - a \<and> a = (d - b) / 2"
proof -
  have b_expr: "b = c - a" using h0 by (auto simp: field_simps)
  have a_expr: "2 * a + (c - a) = d" using b_expr h1 by simp
  then have "a = (d - (c - a)) / 2" by (simp add: field_simps)
  thus ?thesis using b_expr by simp
qed