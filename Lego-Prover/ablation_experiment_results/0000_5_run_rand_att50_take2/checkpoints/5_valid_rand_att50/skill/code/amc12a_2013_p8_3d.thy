theorem amc12a_2013_p8_3d:
  fixes x y z :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "z\<noteq>0"
    and h3 : "x\<noteq>y"
    and h4 : "y\<noteq>z"
    and h5 : "x\<noteq>z"
    and h6 : "x + 2/x = y + 2/y"
    and h7 : "y + 2/y = z + 2/z"
  shows "x * y * z = 2"
proof -
  have eq1: "x + 2/x = y + 2/y" using h6 by simp
  have eq2: "y + 2/y = z + 2/z" using h7 by simp
  have rearranged1: "x - y = (2/y - 2/x)" 
    using eq1 by (simp add: field_simps)
  have rearranged2: "y - z = (2/z - 2/y)" 
    using eq2 by (simp add: field_simps)
  have common_den1: "x - y = (2 * (x - y)) / (x * y)"
    using rearranged1 by sos
  have common_den2: "y - z = (2 * (y - z)) / (y * z)"
    using rearranged2 by sos
  have factored1: "x - y = (2 * (x - y)) / (x * y)"
    using common_den1 by blast
  have factored2: "y - z = (2 * (y - z)) / (y * z)"
    using common_den2 by blast
  have "1 = 2 / (x * y)"
    using h3 factored1 by sos
  have "1 = 2 / (y * z)"
    using h4 factored2 by sos
  then have "x * y * z = 2"
    using `1 = 2 / (x * y)` and `1 = 2 / (y * z)` by (metis add_diff_cancel_left' dbl_simps(3) diff_add_cancel divide_eq_eq_1 eq_divide_eq h1 h2 h5 rearranged2)
  thus ?thesis by simp
qed