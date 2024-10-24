theorem algebra_2varlineareq:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = (a * 2 - b) / 1 \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  have simplified_eq: "x + a = b" using eq2_substituted by simp
  have x_value: "x = (b - a)" using simplified_eq by auto
  have e_value: "e = a - (b - a)" using e_eq x_value by simp
  show ?thesis using x_value e_value by simp
qed