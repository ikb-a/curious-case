theorem amc12a_2013_p8_evolved:
  fixes x y :: real
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have eq: "x + 2/x = y + 2/y" using h3 by auto
  have rearranged: "x - y = (2/y - 2/x)" 
    using eq by (simp add: algebra_simps)
  have cross_mult: "(x - y) * x * y = 2 * (x - y)"
    using rearranged by sos
  have factored: "(x - y) * x * y = 2 * (x - y)" 
    using cross_mult by simp
  have "x * y = 2" 
    using factored h2 by sos
  thus ?thesis by simp
qed