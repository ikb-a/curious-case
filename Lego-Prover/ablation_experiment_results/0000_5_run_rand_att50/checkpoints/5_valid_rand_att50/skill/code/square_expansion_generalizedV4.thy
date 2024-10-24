lemma square_expansion_generalized:
  fixes a b c :: real
  shows "(a + b + c)^2 = a^2 + b^2 + c^2 + 2*(a*b + b*c + c*a)"
proof -
  have "(a + b + c) * (a + b + c) = (a + b + c)^2" by sos
  also have "... = a^2 + (b + c)^2 + 2*a*(b + c)" by sos
  also have "... = a^2 + (b^2 + 2*b*c + c^2) + 2*a*b + 2*a*c" by sos
  finally show ?thesis by sos
qed