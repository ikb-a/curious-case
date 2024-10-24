lemma square_of_difference_generalized:
  fixes a b c :: real
  shows "(a - b - c)^2 = a^2 - 2 * (b + c) * a + (b + c)^2"
proof -
  have "a - (b + c) = a - b - c" by simp
  then show ?thesis by sos
qed