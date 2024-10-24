lemma linear_substitution:
  fixes x e :: complex
  assumes h0: "x + e = c"  
  and h1: "a * x + e = b"  
  shows "e = c - x" and "a * x + (c - x) = b"
proof -
  have e_eq: "e = c - x" using h0 by (simp add: field_simps)
  show "e = c - x" by fact
  show "a * x + (c - x) = b" using e_eq h1 by simp
qed