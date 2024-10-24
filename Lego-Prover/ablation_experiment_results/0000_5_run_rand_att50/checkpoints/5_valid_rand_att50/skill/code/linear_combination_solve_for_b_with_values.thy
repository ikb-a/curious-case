theorem linear_combination_solve_for_b_with_values:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = a_val" 
    and h2 : "m = 3" 
    and h3 : "n = 2" 
    and h4 : "p = 12"
  shows "b = (p - m*a)/n"
proof -
  have "n*b = p - m*a" using h0 by simp
  then have "b = (p - m*a)/n" by (smt (verit) h3 nonzero_mult_div_cancel_left)
  then show ?thesis by simp
qed