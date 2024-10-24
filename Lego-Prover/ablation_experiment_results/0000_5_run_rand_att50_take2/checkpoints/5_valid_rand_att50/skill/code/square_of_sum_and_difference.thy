lemma square_of_sum_and_difference:
  fixes x y :: real
  shows "(x + y)^2 - (x - y)^2 = 4 * x * y"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "(x - y)^2 = x^2 - 2 * x * y + y^2" by sos
  thus ?thesis by sos
qed