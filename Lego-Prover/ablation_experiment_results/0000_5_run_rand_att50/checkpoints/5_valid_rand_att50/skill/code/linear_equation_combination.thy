lemma linear_equation_combination:
  fixes a b x :: complex
  assumes h0: "a + b = x"
    and h1: "2 * a + b = 5"
  shows "b = 5 - 2 * a"
proof -
  have "b = x - a" using h0 by (auto simp: field_simps)
  thus ?thesis using h1 by (auto simp: field_simps)
qed