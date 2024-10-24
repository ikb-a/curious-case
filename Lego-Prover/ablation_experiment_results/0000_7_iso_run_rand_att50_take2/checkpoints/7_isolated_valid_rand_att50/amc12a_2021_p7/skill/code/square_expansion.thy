lemma square_expansion:
  fixes x y :: real
  shows "(x + y)^2 = x^2 + 2 * x * y + y^2" 
     and "(x * y - 1)^2 = x^2 * y^2 - 2 * x * y + 1"
proof -
  {
    have "(x + y)^2 = (x + y) * (x + y)" by sos
    also have "... = x * (x + y) + y * (x + y)" by (simp add: algebra_simps)
    also have "... = x^2 + x * y + y * x + y^2" by sos
    also have "... = x^2 + 2 * x * y + y^2" by (simp add: field_simps)
    finally show "(x + y)^2 = x^2 + 2 * x * y + y^2" by simp
  }
  {
    have "(x * y - 1)^2 = (x * y - 1) * (x * y - 1)" by sos
    also have "... = (x * y) * (x * y) - 2 * (x * y) * 1 + 1 * 1" by (simp add: algebra_simps)
    also have "... = x^2 * y^2 - 2 * x * y + 1" by sos
    finally show "(x * y - 1)^2 = x^2 * y^2 - 2 * x * y + 1" by simp
  }
qed