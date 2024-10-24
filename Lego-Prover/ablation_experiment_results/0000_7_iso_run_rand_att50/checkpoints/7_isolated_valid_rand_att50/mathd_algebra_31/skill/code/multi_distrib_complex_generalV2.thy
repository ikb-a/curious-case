lemma multi_distrib_complex_general:
  fixes z1 z2 z3 z4 :: complex
  shows "(z1 + z2) * (z3 + z4) = z1 * z3 + z1 * z4 + z2 * z3 + z2 * z4"
proof -
  have "(z1 + z2) * (z3 + z4) = z1 * z3 + z1 * z4 + z2 * z3 + z2 * z4"
    by (simp add: distrib_left distrib_right)
  thus ?thesis .
qed