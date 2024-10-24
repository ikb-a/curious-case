theorem amc12a_2013_p8_evolved:
  fixes x y :: real
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  then have rearranged: "x - y = (2/y - 2/x)" by (simp add: field_simps)
  have cross_mult: "x * y * (x - y) = 2 * (x - y)" 
    using rearranged by sos
  then have "x * y * (x - y) - 2 * (x - y) = 0" by simp
  then have "((x * y) - 2) * (x - y) = 0" by (simp add: field_simps)
  thus "x * y = 2" using h2 by simp
qed