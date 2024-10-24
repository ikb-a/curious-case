theorem amc12a_2013_p8_extended:
  fixes x1 x2 y1 y2 :: real
  assumes h0 : "x1 \<noteq> 0" 
    and h1 : "x2 \<noteq> 0" 
    and h2 : "y1 \<noteq> 0" 
    and h3 : "y2 \<noteq> 0" 
    and h4 : "x1 \<noteq> y1" 
    and h5 : "x2 \<noteq> y2" 
    and h6 : "x1 + 2/x1 = y1 + 2/y1" 
    and h7 : "x2 + 2/x2 = y2 + 2/y2"
  shows "x1 * y1 = 2 \<and> x2 * y2 = 2"
proof -
  have eq1: "x1 + 2/x1 = y1 + 2/y1" using h6 by auto
  have eq2: "x2 + 2/x2 = y2 + 2/y2" using h7 by auto
  have rearranged1: "x1 - y1 = (2/y1 - 2/x1)" 
    using eq1 by (simp add: algebra_simps)
  have rearranged2: "x2 - y2 = (2/y2 - 2/x2)" 
    using eq2 by (simp add: algebra_simps)
  have cross_mult1: "(x1 - y1) * x1 * y1 = 2 * x1 - 2 * y1" 
    using rearranged1 by sos
  have cross_mult2: "(x2 - y2) * x2 * y2 = 2 * x2 - 2 * y2" 
    using rearranged2 by sos
  have factored1: "(x1 - y1) * x1 * y1 = 2 * (x1 - y1)" 
    using cross_mult1 h4 by (simp add: field_simps)
  have factored2: "(x2 - y2) * x2 * y2 = 2 * (x2 - y2)" 
    using cross_mult2 h5 by (simp add: field_simps)
  have "x1 * y1 = 2" 
    using factored1 h4 by sos
  have "x2 * y2 = 2" 
    using factored2 h5 by sos
  thus ?thesis by (metis \<open>x1 * y1 = 2\<close>)
qed