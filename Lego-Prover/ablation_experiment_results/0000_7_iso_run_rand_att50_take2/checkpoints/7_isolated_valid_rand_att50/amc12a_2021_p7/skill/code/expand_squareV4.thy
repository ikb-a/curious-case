lemma expand_square:
  fixes x y :: real
  shows "(x + y)^2 = x^2 + 2 * x * y + y^2"
proof -
  have " (x + y)^2 = (x + y) * (x + y)"
    by (simp add: power2_eq_square)
  also have "... = x * (x + y) + y * (x + y)"
    by (simp add: distrib_right)
  also have "... = x^2 + x * y + y * x + y^2"
    by sos
  also have "... = x^2 + 2 * x * y + y^2"
    by (simp add: add.commute)
  finally show ?thesis by simp
qed