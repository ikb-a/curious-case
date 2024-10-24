theorem amc12a_2013_p8_simple:
  fixes x y :: real
  assumes h0 : "x > 0"
    and h1 : "y > 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have eq: "x + 2/x = y + 2/y" using h3 by auto
  have rearranged: "x - y = (2/y - 2/x)" 
    using eq by (simp add: algebra_simps)
  have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged by sos
  thus ?thesis using h2 by sos
qed