theorem amc12a_2013_p8_extended:
  fixes x y z :: real
  assumes h0 : "x \<noteq> 0" "y \<noteq> 0" "z \<noteq> 0"
    and h1 : "x \<noteq> y" "y \<noteq> z" "z \<noteq> x"
    and h2 : "x + 2/x = y + 2/y" "y + 2/y = z + 2/z"
  shows "x * y * z = 4"
proof -
  have "x + 2/x = y + 2/y" using h2(1) by simp
  have "y + 2/y = z + 2/z" using h2(2) by simp
  have rearranged1: "x - y = (2/y - 2/x)" by (smt (verit) h2(1))
  have rearranged2: "y - z = (2/z - 2/y)" by (smt (verit) h2(2))
  have cross_mult1: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged1 by sos
  have cross_mult2: "(y - z) * y * z = 2 * (y - z)" 
    using rearranged2 by sos
  have "x * y = 2" using h1(1) cross_mult1 by sos
  have "y * z = 2" using h1(2) cross_mult2 by sos
  then have "x * y * z = (2/z) * z" by (metis \<open>x * y = 2\<close> add_diff_cancel_left' dbl_simps(3) diff_add_cancel eq_divide_eq h0(2) h0(3) h1(3) rearranged2)
  thus ?thesis by (metis \<open>x * y = 2\<close> \<open>y * z = 2\<close> add_diff_cancel_left' dbl_simps(3) diff_add_cancel eq_divide_eq h0(2) h0(3) h1(3) rearranged2)
qed