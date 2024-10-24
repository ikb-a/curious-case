theorem algebra_simplified_linear_eq:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
  shows "e = 7 - x"
proof -
  show ?thesis using h0 by (auto simp: field_simps)
qed