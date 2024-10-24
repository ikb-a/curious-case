theorem amc12a_2013_p8_extended:
  fixes x y z :: real
  assumes h0 : "x\<noteq>0" and h1 : "y\<noteq>0" and h2 : "z\<noteq>0"
    and h3 : "x\<noteq>y" and h4 : "x\<noteq>z" and h5 : "y\<noteq>z"
    and h6 : "x + 2/x = y + 2/y" and h7: "x + 2/x = z + 2/z"
  shows "x * y * z = 2 * (y + z + 2/(y + z))"
proof -
  have eq_xy: "x + 2 / x = y + 2 / y" using h6 by simp
  have eq_xz: "x + 2 / x = z + 2 / z" using h7 by simp
  have rearranged_xy: "x - y = (2/y - 2/x)" using eq_xy by (simp add: field_simps)
  have rearranged_xz: "x - z = (2/z - 2/x)" using eq_xz by (simp add: field_simps)
  have cross_mult_xy: "(x - y) * (x * y) = 2 * (x - y)" using rearranged_xy by sos
  have cross_mult_xz: "(x - z) * (x * z) = 2 * (x - z)" using rearranged_xz by sos
  have "x * y = 2" 
  proof (cases "x - y = 0")
    case True
    then show ?thesis using h3 by auto
  next
    case False
    then have "x * y = 2" using cross_mult_xy by sos
    thus ?thesis by simp
  qed
  have "x * z = 2" 
  proof (cases "x - z = 0")
    case True
    then show ?thesis using h4 by auto
  next
    case False
    then have "x * z = 2" using cross_mult_xz by sos
    thus ?thesis by simp
  qed
  then show ?thesis using `x * y = 2` by (metis add.commute add_diff_cancel_left' add_divide_eq_if_simps(1) dbl_simps(3) divide_eq_eq h1 h2 h5 h6 h7)
qed