theorem difference_of_squares:
  fixes a b :: real
  shows "(a^2 - b^2) = (a - b) * (a + b)"
proof -
  have "a^2 - b^2 = (a - b) * (a + b)" 
    by sos
  thus ?thesis by simp
qed