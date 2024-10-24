theorem amc12a_2013_p8_generalized:
  fixes x y z :: real
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "z \<noteq> 0"
    and h3 : "x + 2/x = y + 2/y"
    and h4 : "x + 2/x = z + 2/z"
    and h5 : "x \<noteq> y" and h6: "x \<noteq> z" and h7: "y \<noteq> z"
  shows "x * y * z = 2 * (x + y + z)/(x + y + z - 3)"
proof -
  have eq1: "x + 2/x = y + 2/y" using h3 by auto
  have eq2: "x + 2/x = z + 2/z" using h4 by auto
  have rearranged1: "x - y = (2/y - 2/x)" using eq1 by (simp add: algebra_simps)
  have rearranged2: "x - z = (2/z - 2/x)" using eq2 by (simp add: algebra_simps)
  have cross_mult1: "(x - y) * x * y = 2 * x - 2 * y" 
    using rearranged1 by sos
  have cross_mult2: "(x - z) * x * z = 2 * x - 2 * z" 
    using rearranged2 by sos
  have factored1: "(x - y) * x * y = 2 * (x - y)" 
    using cross_mult1 by (simp add: field_simps)
  have factored2: "(x - z) * x * z = 2 * (x - z)" 
    using cross_mult2 by (simp add: field_simps)
  then have "x * y = 2" using h2 h5 by (metis amc12a_2013_p8_evolved h0 h1 h3)
  then have "x * z = 2" using h2 h6 by (metis amc12a_2013_p8_evolved h0 h4)
  then have "y * z = 2" using h2 h7 by (metis amc12a_2013_p8_evolved h1 h3 h4)
  thus "x * y * z = 2 * (x + y + z)/(x + y + z - 3)" 
    using h2 by (metis \<open>x * z = 2\<close> divide_eq_eq h5 one_add_one)
qed