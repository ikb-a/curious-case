lemma expand_square_with_diff:
  fixes x y :: real
  shows "(x + y)^2 - (x - y)^2 = 4 * x * y"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "(x - y)^2 = x^2 - 2 * x * y + y^2" by sos
  then show ?thesis by sos
qed