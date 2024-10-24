lemma polynomial_combination:
  fixes p q r :: real
  shows "(p + q) + r = p + (q + r)"
proof -
  have "p + (q + r) = (p + q) + r" 
    by (metis add.assoc)  
  thus ?thesis by simp
qed