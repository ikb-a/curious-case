lemma enhanced_amc12a_2013_p8:
  fixes x y z :: real
  assumes h0 : "x \<noteq> 0" "y \<noteq> 0" "z \<noteq> 0"
    and h1 : "x \<noteq> y" "y \<noteq> z" "x \<noteq> z"
    and h2 : "x + 2/x = y + 2/y" 
    and h3 : "y + 2/y = z + 2/z"
  shows "x * y * z = 2 * (x + y + z) / (x + y + z)"
proof -
  have "x + 2/x = y + 2/y" using h2 by simp
  have "y + 2/y = z + 2/z" using h3 by simp
  hence "x + 2/x = z + 2/z" using h1 by (metis h2)
  have rearranged: "x - z = (2/z - 2/x)" by (smt (verit) \<open>x + 2 / x = z + 2 / z\<close>)
  have cross_mult: "(x - z) * x * z = 2 * (x - z)" 
    using rearranged by sos
  thus ?thesis 
    using cross_mult h0 h1 h2 h3 by (metis add_cancel_right_left add_cancel_right_right amc12a_2013_p8_extended divide_divide_eq_left' divide_eq_eq eq_divide_eq_1 mult.commute mult.right_neutral mult_1 mult_zero_left mult_zero_right nonzero_divide_mult_cancel_left nonzero_eq_divide_eq nonzero_mult_div_cancel_right nonzero_mult_divide_mult_cancel_right num_double numeral_One one_add_one one_plus_numeral semiring_norm(11) semiring_norm(2) times_divide_eq_left times_divide_eq_right)
qed