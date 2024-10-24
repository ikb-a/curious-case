lemma expression_nonneg_modified:
  fixes x y a b :: real
  assumes "a >= 0" "b >= 0"
  shows "((x * y) - 1)^2 + (x + y)^2 + a + b >= 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2 + a + b"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2) + a + b"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1 + a + b" by sos
  have "x^2 * y^2 >= 0" by (simp add: power2_eq_square)
  have "x^2 >= 0" by (simp add: power2_eq_square)
  have "y^2 >= 0" by (simp add: power2_eq_square)
  have "a >= 0" using assms(1) by auto
  have "b >= 0" using assms(2) by auto
  thus "?E >= 1" 
    using `x^2 * y^2 >= 0` `x^2 >= 0` `y^2 >= 0` `a >= 0` `b >= 0` 
    by sos
qed