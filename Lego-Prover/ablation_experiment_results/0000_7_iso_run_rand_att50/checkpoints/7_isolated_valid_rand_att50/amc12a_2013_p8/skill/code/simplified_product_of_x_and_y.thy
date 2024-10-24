lemma simplified_product_of_x_and_y:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" and "x \<noteq> y" and "x \<noteq> 0" and "y \<noteq> 0"
  shows "x * y = 2"
proof -
  have eq: "x + 2/x = y + 2/y" using assms(1) by auto
  have "x - y = (2/y - 2/x)" using eq by (simp add: algebra_simps)
  hence "(x - y) * (x * y) = 2 * (x - y)" 
    by sos
  then show "x * y = 2" using assms(2) by sos
qed