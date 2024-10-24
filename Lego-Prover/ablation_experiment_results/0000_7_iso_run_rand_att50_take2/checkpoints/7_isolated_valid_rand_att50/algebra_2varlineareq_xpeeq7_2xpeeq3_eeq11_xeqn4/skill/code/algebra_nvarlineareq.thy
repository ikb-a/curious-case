theorem algebra_nvarlineareq:
  fixes x1 x2 e1 e2 :: complex
  assumes h0 : "x1 + e1 = a"
    and h1 : "b * x1 + c * x2 + e2 = d"
  shows "e1 = a - x1 \<and> e2 = d - (b * x1 + c * x2)"
proof -
  have e1_eq: "e1 = a - x1" using h0 by (auto simp: field_simps)
  have e2_eq: "e2 = d - (b * x1 + c * x2)" using h1 by (auto simp: field_simps)
  show ?thesis using e1_eq e2_eq by auto
qed