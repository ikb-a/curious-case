theorem amc12a_2013_p8_extended:
  fixes x y :: real
  assumes h0: "x \<noteq> 0" 
    and h1: "y \<noteq> 0" 
    and h2: "x \<noteq> y" 
    and h3: "x + 2 / x = y + 2 / y" 
    and h4: "x > 0" 
    and h5: "y > 0"
  shows "x * y = 2"
proof -
  have "x + 2 / x = y + 2 / y" using h3 by simp
  thus ?thesis
  proof (cases "x = y")
    case True
    then show ?thesis using h2 by contradiction
  next
    case False
    then have rearranged: "x - y = (2/y - 2/x)" by (smt (verit) h3)
    have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
      using rearranged by sos
    then have "x * y = 2" 
      using h2 cross_mult by sos
    thus ?thesis by simp
  qed
qed