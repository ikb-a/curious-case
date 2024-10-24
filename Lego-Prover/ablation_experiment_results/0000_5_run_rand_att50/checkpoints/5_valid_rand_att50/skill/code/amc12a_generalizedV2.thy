theorem amc12a_generalized:
  fixes x y z :: real
  assumes h0: "x \<noteq> 0"
    and h1: "y \<noteq> 0"
    and h2: "z \<noteq> 0"
    and h3: "x \<noteq> y"
    and h4: "x \<noteq> z"
    and h5: "y \<noteq> z"
    and h6: "x + 2/x = y + 2/y"
    and h7: "x + 2/x = z + 2/z"
  shows "x * y * z = 4"
proof -
  have "x + 2/x = y + 2/y" using h6 by simp
  have "x + 2/x = z + 2/z" using h7 by simp
  have rearranged_y: "x - y = (2/y - 2/x)" by (smt (verit) h6)
  have rearranged_z: "x - z = (2/z - 2/x)" by (smt (verit) h7)
  have cross_mult_y: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged_y by sos
  have cross_mult_z: "(x - z) * x * z = 2 * (x - z)" 
    using rearranged_z by sos
  have "x * y = 2" using h3 cross_mult_y by sos
  have "x * z = 2" using h4 cross_mult_z by sos
  thus ?thesis by (metis \<open>x * y = 2\<close> add.commute add_diff_cancel_left' add_diff_cancel_right' add_divide_eq_if_simps(1) dbl_simps(3) eq_divide_eq h1 h2 h5 h6 h7)
qed