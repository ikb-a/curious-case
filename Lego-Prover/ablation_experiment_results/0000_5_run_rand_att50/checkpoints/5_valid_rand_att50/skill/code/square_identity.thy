lemma square_identity:
  fixes a b :: real
  shows "a^2 - b^2 = (a - b) * (a + b)"
proof -
  have "a^2 - b^2 = (a - b) * (a + b)" by sos
  thus ?thesis .
qed