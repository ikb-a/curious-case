lemma linear_equation_substitution:
  fixes x e :: complex
  assumes h0 : "x + e = c"  
    and h1 : "a * x + e = d"  
  shows "e = c - x"  
  and "a * x + (c - x) = d"  
proof -
  have e_eq: "e = c - x" using h0 by (auto simp: field_simps)
  have substitution: "a * x + (c - x) = d" using e_eq h1 by simp
  show "e = c - x" "a * x + (c - x) = d" by (auto simp: e_eq substitution)
qed