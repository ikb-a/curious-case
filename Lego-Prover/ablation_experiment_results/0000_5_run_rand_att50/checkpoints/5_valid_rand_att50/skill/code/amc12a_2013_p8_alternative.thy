lemma amc12a_2013_p8_alternative:
  fixes x y :: real
  assumes h0: "x \<noteq> 0" 
      and h1: "y \<noteq> 0" 
      and h2: "x \<noteq> y" 
      and h3: "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  have "(x - y) * (x * y) = 2 * (x - y)" 
    using h2 by (metis add_diff_add amc12a_2013_p8_extended diff_add_eq diff_diff_eq2 h0 h1 h3 mult_2 mult_2_right)
  thus ?thesis using h2 by sos
qed