theorem algebra_2varlineareq_generalized:
  fixes x e c d :: complex
  assumes h0 : "x + e = c"
    and h1 : "2 * x + e = d"
  shows "e = (2*c - d) / 1 \<and> x = (d - c) / 1"
proof -
  have e_expr: "e = c - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (c - x) = d" using e_expr h1 by simp
  have eq_simplified: "x + c = d" using eq_substituted by simp
  have x_value: "x = d - c" using eq_simplified by auto
  then have e_value: "e = c - (d - c)" using e_expr x_value by simp
  have e_value_final: "e = 2*c - d" using e_value by simp
  thus ?thesis using x_value e_value_final by auto
qed