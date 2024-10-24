lemma algebraic_identity:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(a - b)^2 = (a + (-b))^2" by (simp)
  also have "... = a^2 + 2*a*(-b) + (-b)^2" 
    by sos
  also have "... = a^2 - 2*a*b + b^2" 
    by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed