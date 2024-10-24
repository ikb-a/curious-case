lemma square_of_difference_generalized:
  fixes a b c :: real
  shows "(a - b + c)^2 = a^2 - 2 * a * b + b^2 + 2 * c * (a - b) + c^2"
proof -
  have "(a - b + c) * (a - b + c) = (a - b)^2 + 2 * c * (a - b) + c^2"
    by sos
  then show ?thesis by sos
qed