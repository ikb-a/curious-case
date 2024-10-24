theorem amc12a_generalized:
  fixes x1 x2 :: real
  assumes h0: "x1 \<noteq> 0" 
      and h1: "x2 \<noteq> 0" 
      and h2: "x1 \<noteq> x2" 
      and h3: "x1 + 2/x1 = x2 + 2/x2"
  shows "x1 * x2 = 2"
proof -
  have eq: "x1 + 2/x1 = x2 + 2/x2" using h3 by auto
  have rearranged: "x1 - x2 = (2/x2 - 2/x1)" 
    using eq by (simp add: algebra_simps)
  have cross_mult: "(x1 - x2) * x1 * x2 = 2 * x1 - 2 * x2" 
    using rearranged by sos
  have factored: "(x1 - x2) * x1 * x2 = 2 * (x1 - x2)"
    using cross_mult by (simp add: field_simps)
  have "x1 * x2 = 2" 
    using factored h2 by sos
  thus ?thesis by simp
qed