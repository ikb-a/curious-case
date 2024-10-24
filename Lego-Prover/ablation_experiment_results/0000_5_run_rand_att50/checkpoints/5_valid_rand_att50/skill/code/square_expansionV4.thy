lemma square_expansion:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(-b)^2 = b^2" by simp
  have "(-2 * a * b) = -2 * a * b" by simp
  have "a^2 + (-2 * a * b) + b^2 = a^2 - 2 * a * b + b^2" by simp
  show ?thesis using power2_eq_square by (smt (verit) diff_add_eq power2_diff)
qed