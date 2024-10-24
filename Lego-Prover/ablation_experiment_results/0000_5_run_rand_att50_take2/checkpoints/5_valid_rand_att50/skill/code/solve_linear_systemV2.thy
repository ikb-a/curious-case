lemma solve_linear_system:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  have simplified_eq: "(1 * x) + a = b" using eq2_substituted by simp
  have x_value: "x = (b - a) / 1" using simplified_eq by auto
  have e_value: "e = a - ((b - a) / 1)" using e_eq x_value by simp
  show ?thesis using x_value e_value by simp
qed