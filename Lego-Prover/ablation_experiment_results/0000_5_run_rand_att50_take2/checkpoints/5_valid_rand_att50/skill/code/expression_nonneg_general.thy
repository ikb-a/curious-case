lemma expression_nonneg_general:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "((x * y) - 1)^2 + (x + y)^2 >= 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" by sos
  have "x^2 * y^2 >= 0" using assms by auto
  have "x^2 >= 0" using assms by auto
  have "y^2 >= 0" using assms by auto
  have "?E >= 1" using `x^2 * y^2 >= 0` `x^2 >= 0` `y^2 >= 0` by sos
  have "?E = 1" when "x = 0" and "y = 0" 
    using that by auto
  thus ?thesis by sos
qed