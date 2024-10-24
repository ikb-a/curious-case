lemma polynomial_combination:
  fixes p q r :: real
  shows "(p + q) + r = p + (q + r)"
proof -
  have "p + (q + r) = p + q + r" by (metis add.assoc)
  moreover have "(p + q) + r = p + q + r" by (metis add.assoc)
  ultimately show "(p + q) + r = p + (q + r)" by auto
qed