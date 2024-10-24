theorem amc12_generalized:
  fixes x y :: real
  assumes h0: "x \<noteq> 0"
    and h1: "y \<noteq> 0"
    and h2: "x \<noteq> y"
    and h3: "x + a/x = y + a/y"  
  shows "x * y = a"
proof -
  have eq: "x + a / x = y + a / y" using h3 by simp
  have rearranged: "x - y = (a / y - a / x)" 
    using eq by (simp add: field_simps)
  have common_den: "x - y = (a * (x - y)) / (x * y)"
    using rearranged by (smt (verit) diff_frac_eq h0 h1 mult.commute right_diff_distrib')
  have factored: "1 = a / (x * y)"
    using h2 common_den by sos
  hence "x * y = a" 
    using `1 = a / (x * y)` by (simp add: field_simps)
  thus ?thesis by simp
qed