theorem amc12a_2013_p8_extended:
  fixes x y :: real
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "\<forall>n. (x + 2/x)^n = (y + 2/y)^n"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by (metis add.commute add_left_imp_eq divide_cancel_left numeral_plus_one one_add_one power_one_right zero_neq_numeral)
  have rearranged: "x - y = (2/y - 2/x)" by (smt (verit) \<open>x + 2 / x = y + 2 / y\<close>)
  have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged by sos
  have "x * y = 2" 
    using h2 cross_mult by sos
  thus ?thesis by simp
qed