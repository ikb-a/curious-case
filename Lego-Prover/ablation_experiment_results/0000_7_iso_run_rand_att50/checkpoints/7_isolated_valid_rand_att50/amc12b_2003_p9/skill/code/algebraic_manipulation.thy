lemma algebraic_manipulation:
  fixes a b c d :: real
  shows "(a + b) - (c + d) = (a - c) + (b - d)"
proof -
  have "(a + b) - (c + d) = a + b - c - d" by simp
  also have "... = (a - c) + (b - d)" by (simp add: algebra_simps)
  finally show ?thesis .
qed