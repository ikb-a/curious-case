lemma square_expansion_complex:
  fixes z1 z2 :: complex
  shows "(z1 - z2)^2 = z1^2 - 2*z1*z2 + z2^2"
proof -
  have "(z1 - z2)^2 = (z1 + (-z2))^2" by simp
  also have "... = z1^2 + 2*z1*(-z2) + (-z2)^2" by (smt (verit) calculation diff_add_eq diff_minus_eq_add mult_minus_right power2_diff power2_eq_iff power2_eq_square verit_minus_simplify(4))
  also have "... = z1^2 - 2*z1*z2 + z2^2" by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed