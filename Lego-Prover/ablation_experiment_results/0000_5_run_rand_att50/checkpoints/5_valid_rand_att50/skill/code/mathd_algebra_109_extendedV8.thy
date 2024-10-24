theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "n * a + m * b = k" 
    and h1 : "a = r" 
    and h2 : "n > 0" and "m > 0" and "k > 0"
  shows "b = (k - n * r) / m"
proof -
  have eq: "n * a + m * b = k" using h0 by simp
  have "n * r + m * b = k" using h1 eq by simp
  have "m * b = k - n * r" by (smt (verit) h0 h1)
  show ?thesis using `m > 0` by (metis \<open>m * b = k - n * r\<close> less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
qed