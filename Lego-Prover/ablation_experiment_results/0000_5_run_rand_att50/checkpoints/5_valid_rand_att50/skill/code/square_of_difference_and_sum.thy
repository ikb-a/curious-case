lemma square_of_difference_and_sum:
  fixes a b :: real
  shows "(a - b)^2 + (a + b)^2 = 2 * (a^2 + b^2)"
proof -
  have "(a - b)^2 = a^2 - 2 * a * b + b^2" by (simp add: square_of_difference_general)
  have "(a + b)^2 = a^2 + 2 * a * b + b^2" by (simp add: square_of_sum)
  then show ?thesis by sos
qed