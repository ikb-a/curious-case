lemma linear_slope:
  fixes m c :: real and x y :: real
  assumes "f x = m * x + c" and "f y = m * y + c"
  shows "f x - f y = m * (x - y)"
proof -
  have "f x = m * x + c" using assms(1) by simp
  have "f y = m * y + c" using assms(2) by simp
  then have "f x - f y = (m * x + c) - (m * y + c)"
    by (metis assms(1))
  then have "f x - f y = m * x + c - m * y - c"
    by (simp)
  then show ?thesis by (simp add: algebra_simps)
qed