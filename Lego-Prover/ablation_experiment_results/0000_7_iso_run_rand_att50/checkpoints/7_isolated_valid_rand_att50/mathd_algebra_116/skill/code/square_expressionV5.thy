lemma square_expression:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" 
    by (simp add: power2_eq_square algebra_simps)
  thus ?thesis by simp
qed