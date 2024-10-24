theorem algebra_2varlineareq_xpeeq_a_2xpeeq_b_eeq_c_xeqn_d:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  have simplified_eq: "x + a = b" using eq2_substituted by simp
  have x_value: "x = (b - a) / 1" using simplified_eq by auto
  show ?thesis using x_value e_eq by simp
qed