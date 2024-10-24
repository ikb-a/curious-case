lemma difference_of_squares:
  fixes a b :: real
  shows "(a - b) * (a + b) = a^2 - b^2"
proof -
  have "(a - b) * (a + b) = a^2 + a * b - b * a - b^2" 
    by sos
  then show ?thesis by simp
qed