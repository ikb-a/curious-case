lemma double_square_complex:
  fixes z :: complex
  shows "2 * (Re z)^2 + 2 * (Im z)^2 = 2 * (norm z)^2"
proof -
  have "norm z = sqrt ((Re z)^2 + (Im z)^2)" 
    by (metis norm_complex_def)
  hence "norm z^2 = (Re z)^2 + (Im z)^2" by simp
  thus ?thesis 
    by auto
qed