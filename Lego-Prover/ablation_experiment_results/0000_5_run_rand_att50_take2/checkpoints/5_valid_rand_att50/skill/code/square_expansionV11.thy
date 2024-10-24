lemma square_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "(-y)^2 = y^2" by simp
  have "(x - y)^2 = x^2 - 2 * x * y + y^2" using power2_eq_square by (smt (verit) diff_add_eq power2_diff)
  thus ?thesis by simp
qed