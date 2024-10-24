theorem amc12a_2013_p8_improved:
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
  have "x * y * (x - y) = (x - y) * 2" 
    using rearranged by sos
  then have "x * y * (x - y) - (x - y) * 2 = 0" by simp
  then have "x * y - 2 = 0" 
    using h2 by sos
  thus ?thesis by simp
qed