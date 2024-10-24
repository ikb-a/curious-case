lemma polynomial_combination:
  fixes p q r :: real
  shows "(p + q) + r = p + (q + r)"
proof -
  show "(p + q) + r = p + (q + r)"
  proof -
    have "p + (q + r) = (p + q) + r" by (simp add: algebra_simps)
    thus ?thesis by simp
  qed
qed