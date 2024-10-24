lemma substitution_for_linear_equations:
  fixes x e :: complex
  assumes h0 : "x + e = a"  
      and h1 : "2 * x + e = b"  
  shows "e = a - x"  
      and "2 * x + (a - x) = b"  
proof -
  show "e = a - x" using h0 by auto
  then show "2 * x + (a - x) = b" using h1 by simp
qed