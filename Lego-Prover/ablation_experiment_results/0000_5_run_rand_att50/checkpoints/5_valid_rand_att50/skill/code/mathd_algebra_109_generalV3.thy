theorem mathd_algebra_109_general:
  fixes a b :: real
  assumes h0 : "k * a + m * b = c"
    and h1 : "a = a_val"
    and h2 : "k > 0" "m > 0"
  shows "b = (c - k * a_val) / m"
proof -
  have eq: "k * a + m * b = c" using h0 by simp
  have "k * a_val + m * b = c" using h1 eq by simp
  have "m * b = c - k * a_val" by (metis \<open>k * a_val + m * b = c\<close> add_diff_cancel_left' h1 mult_delta_right)
  thus ?thesis by (metis h2(2) less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
qed