lemma double_square_of_sum:
  fixes x y :: real
  shows "2 * (x + y)^2 = 2 * (x^2 + 2*x*y + y^2)"
proof -
  have "2 * (x + y)^2 = 2 * ((x + y) * (x + y))" by sos
  also have "... = 2 * (x^2 + 2*x*y + y^2)" by sos
  finally show ?thesis by simp
qed