lemma square_of_difference_with_non_negatives:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have "(a - b)^2 = (a + -b)^2" by simp
  also have "... = a^2 + 2 * a * (-b) + (-b)^2" by sos
  also have "... = a^2 - 2 * a * b + b^2" by simp
  finally show ?thesis .
qed