theorem amc12a_2013_p8_extended:
  fixes x y :: real
  assumes h0: "x \<noteq> 0" 
      and h1: "y \<noteq> 0" 
      and h2: "x \<noteq> y" 
      and h3: "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  hence rearranged: "x - y = (2/y - 2/x)" by (smt (verit))
  have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged by sos
  then obtain c where c_def: "c = (x - y)" "c \<noteq> 0" 
    using h2 by auto
  have "x * y = 2" 
    using c_def(2) cross_mult by (metis c_def(1) diff_frac_eq divide_divide_eq_left' h0 h1 mult.assoc mult.commute mult_2 mult_2_right mult_divide_mult_cancel_left_if mult_eq_0_iff mult_numeral_1_right nonzero_divide_mult_cancel_right nonzero_mult_div_cancel_left nonzero_mult_divide_mult_cancel_left2 numeral_One one_add_one rearranged right_diff_distrib times_divide_eq_right)
  thus ?thesis by simp
qed