theorem linear_system_two_vars:
  fixes x e :: complex
  assumes h0 : "x + e = m"
    and h1 : "2 * x + e = n"
  shows "e = (m - x) \<and> x = (n - m)"
proof -
  have e_expr: "e = m - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (m - x) = n" using e_expr h1 by simp
  have eq_simplified: "x + m = n" using eq_substituted by simp
  have x_value: "x = n - m" using eq_simplified by auto
  then have e_value: "e = m - (n - m)" using e_expr by simp
  then show ?thesis using x_value by auto
qed