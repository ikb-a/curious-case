theorem amc12a_2013_p8_extended:
  fixes x y z :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "z\<noteq>0"
    and h3 : "x\<noteq>y"
    and h4 : "y\<noteq>z"
    and h5 : "x + 2/x = y + 2/y"
    and h6 : "y + 2/y = z + 2/z"
  shows "x * y = 2 \<and> y * z = 2"
proof -
  have eq1: "x + 2/x = y + 2/y" using h5 by auto
  have eq2: "y + 2/y = z + 2/z" using h6 by auto
  have rearranged1: "x - y = (2/y - 2/x)" 
    using eq1 by (simp add: algebra_simps)
  have rearranged2: "y - z = (2/z - 2/y)" 
    using eq2 by (simp add: algebra_simps)
  have cross_mult1: "(x - y) * x * y = 2 * x - 2 * y" 
    using rearranged1 by sos
  have cross_mult2: "(y - z) * y * z = 2 * y - 2 * z" 
    using rearranged2 by sos
  have factored1: "(x - y) * x * y = 2 * (x - y)"
    using cross_mult1 by (simp add: field_simps)
  have factored2: "(y - z) * y * z = 2 * (y - z)"
    using cross_mult2 by (simp add: field_simps)
  have "x * y = 2" 
    using factored1 h3 by sos
  have "y * z = 2" 
    using factored2 h4 by sos
  thus ?thesis by (metis \<open>x * y = 2\<close>)
qed