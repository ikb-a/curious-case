lemma expression_nonneg:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 >= 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by (simp add: power2_eq_square algebra_simps)
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by (simp add: power2_eq_square algebra_simps)
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" by sos
  have "x^2 * y^2 >= 0" using nonnegativity_of_squares by auto
  have "x^2 >= 0" using nonnegativity_of_squares by auto
  have "y^2 >= 0" using nonnegativity_of_squares by auto
  have "?E >= 1" by sos
  have "?E = 1" when "x = 0" and "y = 0" 
    using that by auto
  thus ?thesis by sos
qed