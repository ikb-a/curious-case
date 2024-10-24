lemma square_of_difference_expanded:
  fixes a b c :: real
  shows "(a - b)^2 + (b - c)^2 = a^2 - 2*a*b + b^2 + b^2 - 2*b*c + c^2"
proof -
  have "a - b = a + -b" by simp
  have "b - c = b + -c" by simp
  then show ?thesis by sos
qed