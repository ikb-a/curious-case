theorem mathd_algebra_109_general:
  fixes a b :: real
  assumes h0 : "k * a + m * b = n" 
    and h1 : "a = x"
    and k: "k > 0" and m: "m > 0"
  shows "b = (n - k * x) / m"
proof -
  have eq: "k * a + m * b = n" using h0 by simp
  have "k * x + m * b = n" using h1 eq by simp
  have "m * b = n - k * x" by (metis \<open>k * x + m * b = n\<close> add_diff_cancel_left' h1 mult_delta_right)
  show ?thesis using `m > 0` by (metis \<open>m * b = n - k * x\<close> less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
qed