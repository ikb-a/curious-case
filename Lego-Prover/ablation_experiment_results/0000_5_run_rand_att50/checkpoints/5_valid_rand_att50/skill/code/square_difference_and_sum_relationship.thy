lemma square_difference_and_sum_relationship:
  fixes a b :: real
  shows "(a - b)^2 + (a + b)^2 = 2 * (a^2 + b^2)"
proof -
  have "(a - b)^2 + (a + b)^2 = (a^2 - 2 * a * b + b^2) + (a^2 + 2 * a * b + b^2)" 
    by (simp add: square_of_difference_expanded square_of_sum)
  also have "... = 2 * a^2 + 2 * b^2" by simp
  finally show ?thesis by simp
qed