lemma square_of_sum:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2 * a * b + b^2"
proof -
  have "(a + b) * (a + b) = a^2 + 2 * a * b + b^2" by sos
  thus ?thesis by sos
qed