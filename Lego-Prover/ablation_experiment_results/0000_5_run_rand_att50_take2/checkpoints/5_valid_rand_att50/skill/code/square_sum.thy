lemma square_sum:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a + b)^2 = a^2 + 2*a*b + b^2"
proof -
  have "(a + b)^2 = a^2 + 2*a*b + b^2" by sos
  thus ?thesis .
qed