lemma trivial_inequality:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 2 * x * y"
proof -
  have "x^2 - 2 * x * y + y^2 = (x - y)^2"
    by sos
  hence "x^2 + y^2 - 2 * x * y = (x - y)^2"
    by simp
  thus ?thesis
    by sos
qed