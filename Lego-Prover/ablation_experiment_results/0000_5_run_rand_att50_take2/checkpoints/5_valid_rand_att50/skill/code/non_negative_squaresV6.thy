lemma non_negative_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0" and "(a * b)^2 >= 0"
proof -
  have "a^2 >= 0" 
    by auto
  moreover have "b^2 >= 0" 
    by auto
  moreover have "(a * b)^2 = a^2 * b^2" 
    by sos
  ultimately show "a^2 >= 0" and "b^2 >= 0" and "(a * b)^2 >= 0"
    using `a^2 >= 0` `b^2 >= 0` by auto
qed