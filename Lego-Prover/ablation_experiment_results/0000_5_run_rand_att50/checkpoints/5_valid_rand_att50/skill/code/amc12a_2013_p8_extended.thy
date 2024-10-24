theorem amc12a_2013_p8_extended:
  fixes x y z :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "z\<noteq>0"
    and h3 : "x\<noteq>y"
    and h4 : "x\<noteq>z"
    and h5 : "y\<noteq>z"
    and h6 : "x + 2/x = y + 2/y"
    and h7 : "y + 2/y = z + 2/z"
  shows "x * y * z = 4"
proof -
  have "x + 2/x = y + 2/y" using h6 by simp
  have "y + 2/y = z + 2/z" using h7 by simp
  have rearranged1: "x - y = (2/y - 2/x)" by (smt (verit) h6)
  have rearranged2: "y - z = (2/z - 2/y)" by (smt (verit) h7)
  have cross_mult1: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged1 by sos
  have cross_mult2: "(y - z) * y * z = 2 * (y - z)" 
    using rearranged2 by sos
  have "x * y = 2" 
    using h3 cross_mult1 by sos
  have "y * z = 2" 
    using h5 cross_mult2 by sos
  then show "x * y * z = 4" 
    using `x * y = 2` by (metis add_diff_cancel_left' dbl_simps(3) diff_add_cancel eq_divide_eq h1 h2 h4 rearranged2)
qed