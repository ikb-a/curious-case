lemma linear_substitution:
  fixes x e :: complex
  assumes h0: "x + e = c"  
  shows "e = c - x"
proof -
  show "e = c - x" using h0 by (auto simp: field_simps)
qed