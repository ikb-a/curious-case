lemma square_difference_identity:
  fixes a b :: real
  shows "(a - b) * (a + b) = a^2 - b^2"
proof -
  have "(a - b) * (a + b) = a^2 - b^2"
    by sos
  thus ?thesis by simp
qed