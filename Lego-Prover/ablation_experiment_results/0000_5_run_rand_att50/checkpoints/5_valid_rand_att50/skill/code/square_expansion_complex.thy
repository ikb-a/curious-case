lemma square_expansion_complex:
  fixes z1 z2 :: complex
  shows "(z1 - z2)^2 = z1^2 - 2*z1*z2 + z2^2"
proof -
  have "(z1 - z2)^2 = z1^2 - 2*z1*z2 + z2^2" 
    by (smt (verit) diff_add_eq power2_diff)
  thus ?thesis by auto
qed