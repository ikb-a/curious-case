lemma polynomial_combination:
  fixes p q r :: real
  shows "(p + q) + r = p + (q + r)"
proof -
  show "(p + q) + r = p + (q + r)"
    by (simp add: algebra_simps)
qed