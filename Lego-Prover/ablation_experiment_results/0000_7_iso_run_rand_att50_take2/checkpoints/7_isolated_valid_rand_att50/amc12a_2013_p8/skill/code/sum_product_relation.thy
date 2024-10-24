lemma sum_product_relation:
  fixes x y :: real
  assumes "x + y = s" and "x * y = p"
  shows "x^2 + y^2 = s^2 - 2 * p"
proof -
  have "x^2 + y^2 = (x + y)^2 - 2 * x * y" 
    by sos
  then show ?thesis using assms by simp
qed