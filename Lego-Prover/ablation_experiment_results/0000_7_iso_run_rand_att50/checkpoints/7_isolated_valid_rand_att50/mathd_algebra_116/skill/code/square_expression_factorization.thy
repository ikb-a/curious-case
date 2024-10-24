lemma square_expression_factorization:
  fixes a b :: real
  shows "a^2 - 2*a*b + b^2 = (a - b)^2"
proof -
  have "a^2 - 2*a*b + b^2 = (a - b)^2" by sos
  thus ?thesis by simp
qed