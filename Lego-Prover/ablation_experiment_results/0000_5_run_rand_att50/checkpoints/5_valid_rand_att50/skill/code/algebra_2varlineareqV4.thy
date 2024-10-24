theorem algebra_2varlineareq:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = (a - x) \<and> x = (b - a)/1"
proof -
  have e_expr: "e = a - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (a - x) = b" using e_expr h1 by simp
  have eq_simplified: "x + a = b" using eq_substituted by simp
  have x_value: "x = b - a" using eq_simplified by auto
  then have e_value: "e = a - (b - a)" using e_expr x_value by simp
  then show ?thesis using x_value e_value by auto
qed