theorem amc12a_2013_p8_generalized:
  fixes x y :: real and n :: nat
  assumes h0 : "x\<noteq>0" 
    and h1 : "y\<noteq>0"
    and h2 : "x\<noteq>y"
    and h3 : "\<forall>k. x + k/x = y + k/y"
  shows "x * y = k"
proof -
  have "x + k/x = y + k/y" using h3 by simp
  have rearranged: "x - y = (k/y - k/x)" by (smt (verit) h3)
  have cross_mult: "(x - y) * x * y = k * (x - y)" 
    using rearranged by (metis add.comm_neutral add_divide_eq_if_simps(1) div_0 h2 h3)
  then have "x * y = k" 
    using h2 by auto
  thus ?thesis by simp
qed