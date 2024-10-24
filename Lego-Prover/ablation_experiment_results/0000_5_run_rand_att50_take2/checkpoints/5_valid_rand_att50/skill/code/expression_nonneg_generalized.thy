lemma expression_nonneg_generalized:
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
  have "x^2 * y^2 >= 0" by (simp add: assms)
  have "x^2 >= 0" by (simp add: assms)
  have "y^2 >= 0" by (simp add: assms)
  thus "?E >= 1" 
  proof (cases "x = 0 \<and> y = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "x > 0 \<or> y > 0" by (metis assms(1) assms(2) order_less_le)
    hence "x^2 * y^2 + x^2 + y^2 + 1 > 1" using `x >= 0` `y >= 0` by sos
    thus ?thesis by sos
  qed
qed