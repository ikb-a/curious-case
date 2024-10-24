lemma square_expression:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "a - b = a + (-b)" by simp
  hence "(a - b)^2 = (a + (-b))^2" by simp
  then have "(a - b)^2 = a^2 + 2*a*(-b) + (-b)^2" 
    by sos
  thus ?thesis by (simp add: power2_eq_square)
qed