lemma square_of_difference_extended:
  fixes a b c :: real
  shows "(a - b)^2 + (b - c)^2 = a^2 - 2 * a * b + b^2 + b^2 - 2 * b * c + c^2"
proof -
  have "(a - b)^2 = a^2 - 2 * a * b + b^2" by sos
  have "(b - c)^2 = b^2 - 2 * b * c + c^2" by sos
  then show ?thesis by sos
qed