lemma linear_combination_equation:
  fixes x y e :: complex
  assumes h0: "x + y = e"
    and h1: "2 * x + y = 3"
  shows "y = e - x"
proof -
  have "y = e - x" using h0 by (auto simp: field_simps)
  thus ?thesis by simp
qed