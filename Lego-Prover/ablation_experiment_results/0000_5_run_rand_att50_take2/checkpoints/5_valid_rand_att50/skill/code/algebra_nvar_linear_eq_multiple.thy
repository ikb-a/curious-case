theorem algebra_nvar_linear_eq_multiple:
  fixes x1 x2 x3 e1 e2 e3 :: complex
  assumes h0: "x1 + e1 = a"
    and h1: "x2 + e2 = b"
    and h2: "x3 + e3 = c"
    and h3: "x1 + x2 + x3 = d"
  shows "e1 = a - x1 \<and> e2 = b - x2 \<and> e3 = c - x3"
proof -
  have e1_eq: "e1 = a - x1" using h0 by (auto simp: field_simps)
  have e2_eq: "e2 = b - x2" using h1 by (auto simp: field_simps)
  have e3_eq: "e3 = c - x3" using h2 by (auto simp: field_simps)
  show ?thesis using e1_eq e2_eq e3_eq by auto
qed