theorem amc12a_2013_p8:
  fixes x y :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "x\<noteq>y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have eq: "x + 2/x = y + 2/y" using h3 by simp
  have rearranged: "x - y = (2/y - 2/x)" 
    using eq by (simp add: field_simps)
  have common_den: "x - y = (2 * (x - y)) / (x * y)"
    using rearranged by sos
  have factored: "x - y = (2 * (x - y)) / (x * y)"
    using common_den by blast
  have "1 = 2 / (x * y)"
    using h2 factored by sos
  have "x * y = 2"
    using `1 = 2 / (x * y)` by (simp add: field_simps)
  thus ?thesis by simp
qed