theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "k * a + m * b = c"  
    and h1 : "a = d"  
    and k_pos: "k > 0"  
    and m_pos: "m > 0"  
  shows "b = (c - k * d) / m"  
proof -
  have eq: "k * a + m * b = c" using h0 by simp
  have "k * d + m * b = c" using h1 eq by simp
  have "m * b = c - k * d" by (metis \<open>k * d + m * b = c\<close> add_diff_cancel_left' h1 mult_delta_right)
  then show ?thesis by (metis less_numeral_extra(3) m_pos mult.commute nonzero_mult_div_cancel_right)
qed