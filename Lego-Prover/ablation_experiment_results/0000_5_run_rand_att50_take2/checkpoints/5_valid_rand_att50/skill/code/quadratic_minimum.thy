lemma quadratic_minimum:
  fixes x :: real
  shows "x^2 - 6*x + 13 >= 4"
proof -
  have "x^2 - 6*x + 9 >= 0" by sos
  then have "x^2 - 6*x + 13 = (x - 3)^2 + 4" by sos
  thus ?thesis by auto
qed