lemma square_of_sum:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2 * a * b + b^2"
proof -
  have "a + b = a + b" by simp
  hence "(a + b)^2 = (a + b)^2" by simp
  thus ?thesis by sos
qed