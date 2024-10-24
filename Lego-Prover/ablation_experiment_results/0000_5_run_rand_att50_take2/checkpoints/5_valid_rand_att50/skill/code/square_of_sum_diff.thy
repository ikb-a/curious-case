lemma square_of_sum_diff:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a + b)^2 - (a - b)^2 = 4*a*b"
proof -
  have "(a + b)^2 - (a - b)^2 = (a^2 + 2*a*b + b^2) - (a^2 - 2*a*b + b^2)"
    by sos
  also have "... = 4*a*b" by simp
  finally show ?thesis .
qed