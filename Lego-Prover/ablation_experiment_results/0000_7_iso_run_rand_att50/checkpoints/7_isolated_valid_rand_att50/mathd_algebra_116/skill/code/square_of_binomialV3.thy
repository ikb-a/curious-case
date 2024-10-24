lemma square_of_binomial:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2 * a * b + b^2"
proof -
  have "(a + b)^2 = (a + b) * (a + b)" by (simp add: power2_eq_square)
  also have "... = a * a + a * b + b * a + b * b" 
    by sos
  also have "... = a^2 + 2 * a * b + b^2" 
    by sos
  finally show ?thesis .
qed