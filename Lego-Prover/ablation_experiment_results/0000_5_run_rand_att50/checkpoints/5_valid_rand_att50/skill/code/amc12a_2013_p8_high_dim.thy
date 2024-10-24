theorem amc12a_2013_p8_high_dim:
  fixes x y :: real
    and n :: nat
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
  and "x^n * y^n = 2^n"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  have rearranged: "x - y = (2/y - 2/x)" by (smt (verit) h3)
  have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged by sos
  have "x * y = 2" 
    using h2 cross_mult by sos
  thus "x * y = 2" by simp
  moreover have "x^n * y^n = (x * y)^n" 
    using `x * y = 2` by (metis power_mult_distrib)
  ultimately show "x^n * y^n = 2^n" by simp
qed