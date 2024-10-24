lemma expand_square:
  fixes x y :: real
  shows "(x + y)^2 = x^2 + 2 * x * y + y^2"
proof -
  have "((x + y) * (x + y)) = (x + y) * x + (x + y) * y"
    by sos
  also have "... = x^2 + y * x + y * x + y^2"
    by sos
  also have "... = x^2 + 2 * x * y + y^2"
    by (simp add: field_simps)
  finally show ?thesis by sos
qed