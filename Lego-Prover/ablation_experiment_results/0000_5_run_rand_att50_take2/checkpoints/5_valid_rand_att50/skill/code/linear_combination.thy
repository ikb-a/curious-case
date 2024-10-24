lemma linear_combination:
  fixes a b c :: complex
  assumes h0: "a + b = c"
  shows "b = c - a"
proof -
  have "b = c - a" using h0 by (simp add: field_simps)
  thus ?thesis by simp
qed