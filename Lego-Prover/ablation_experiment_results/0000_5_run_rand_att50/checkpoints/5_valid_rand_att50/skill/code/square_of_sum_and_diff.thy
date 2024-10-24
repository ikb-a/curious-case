lemma square_of_sum_and_diff:
  fixes a b :: real
  shows "(a + b)^2 + (a - b)^2 = 2*a^2 + 2*b^2"
proof -
  have " (a + b)^2 + (a - b)^2 = (a^2 + 2*a*b + b^2) + (a^2 - 2*a*b + b^2)" 
    by (simp add: expanded_square_of_sum expanded_square_of_difference)
  thus ?thesis by simp
qed