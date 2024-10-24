lemma solve_linear_system:
  fixes x e :: complex
  assumes h0: "x + e = 7"
    and h1: "2 * x + e = 3"
  shows "e = 7 - x"
proof -
  have "e = 7 - x" using h0 by (auto simp: field_simps)
  thus ?thesis by simp
qed