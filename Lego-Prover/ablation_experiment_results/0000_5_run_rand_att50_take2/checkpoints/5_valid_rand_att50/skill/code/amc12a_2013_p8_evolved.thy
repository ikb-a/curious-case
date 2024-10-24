theorem amc12a_2013_p8_evolved:
  fixes x y :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "x\<noteq>y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  obtain a where "a = x * y" using h0 h1 by auto
  have eq: "x + 2/x = y + 2/y" using h3 by simp
  have rearranged: "x - y = (2/y - 2/x)" 
    using eq by (simp add: field_simps)
  have common_den: "x - y = (2 * (x - y)) / (x * y)"
    using rearranged by sos
  have factored: "x - y = (2 * (x - y)) / a"
    using common_den by (metis \<open>a = x * y\<close> add_diff_add diff_diff_eq2 divide_eq_0_iff frac_eq_eq mult.commute mult_2)
  have "1 = 2 / a"
    using h2 factored by sos
  thus ?thesis using `1 = 2 / a` by (metis \<open>a = x * y\<close> dbl_simps(3) one_eq_divide_iff)
qed