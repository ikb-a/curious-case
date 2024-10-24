lemma polynomial_combination:
  fixes p q r :: real
  shows "(p + q) + r = p + (q + r)"
proof -
  have "p + (q + r) = p + (r + q)" 
    by (simp add: algebra_simps)
  also have "... = (p + r) + q" 
    by (simp add: algebra_simps)
  finally show "(p + q) + r = p + (q + r)" 
    using `p + (q + r) = p + (r + q)` by simp
qed