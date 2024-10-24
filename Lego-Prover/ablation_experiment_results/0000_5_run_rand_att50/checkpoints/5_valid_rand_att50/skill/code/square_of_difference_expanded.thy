lemma square_of_difference_expanded:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have "(a - b) * (a - b) = a^2 - 2 * a * b + b^2"
  proof -
    have "a - b = a + -b" by simp
    then show ?thesis by sos
  qed
  thus ?thesis by sos
qed