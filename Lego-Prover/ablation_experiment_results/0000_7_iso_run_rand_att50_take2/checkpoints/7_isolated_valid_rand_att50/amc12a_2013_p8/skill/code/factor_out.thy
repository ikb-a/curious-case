lemma factor_out:
  fixes x y :: real
  assumes "x + 2 / x = y + 2 / y"
    and "x \<noteq> y"
  shows "x - y = (2 * (x - y)) / (x * y)"
proof -
  have "x + 2 / x - (y + 2 / y) = 0" using assms(1) by auto
  hence "x - y + (2 / x - 2 / y) = 0" by (simp add: algebra_simps)
  then have "x - y = - (2 / x - 2 / y)" by simp
  then have "x - y = - (2 * (y - x)) / (x * y)" by sos
  then have "x - y = (2 * (x - y)) / (x * y)" by (simp add: algebra_simps)
  thus ?thesis using assms(2) by (simp add: field_simps)
qed