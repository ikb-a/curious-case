lemma general_square_identity:
  fixes a b c :: real
  shows "(a + b + c)^2 = a^2 + b^2 + c^2 + 2 * (a*b + b*c + a*c)"
proof -
  have "(a + b + c) = (a + b) + c" by simp
  also have "... = a + b + c" by simp
  then show ?thesis by sos
qed