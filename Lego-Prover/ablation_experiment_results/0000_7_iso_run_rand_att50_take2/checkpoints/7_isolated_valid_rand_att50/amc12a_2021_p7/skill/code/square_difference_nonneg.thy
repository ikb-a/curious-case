lemma square_difference_nonneg:
  fixes x y :: real
  shows "(x - y)^2 >= 0"
proof -
  have "(x - y)^2 = x^2 - 2*x*y + y^2" by sos
  then show ?thesis using nonnegative_sum_of_squares by sos
qed