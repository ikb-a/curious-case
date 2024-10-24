lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a \<ge> 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"
proof -
  have "sqrt(a) * sqrt(b) = sqrt(a * b)" 
    by (metis real_sqrt_mult)
  thus ?thesis 
    by simp
qed