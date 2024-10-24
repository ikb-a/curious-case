theorem mathd_algebra_109_generalized:
  fixes a b :: real
  assumes h0 : "k * a + m * b = c" 
    and h1 : "k * a = c - m * b" 
    and h2 : "a = 4" 
    and k: "k = 3" 
    and m: "m = 2" 
    and c: "c = 12"
  shows "b = (c - k * a) / m"
proof -
  have "k * 4 + m * b = c" using h2 h0 by simp
  have "12 + m * b = c" using `k = 3` `m = 2` `c = 12` by (smt (verit) \<open>k * 4 + m * b = c\<close>)
  have "m * b = c - 12" by (metis \<open>12 + m * b = c\<close> add_diff_cancel_left' c cancel_comm_monoid_add_class.diff_cancel dbl_def m mult_2)
  have "b = (c - k * a) / m" using `k = 3` `m = 2` `c = 12` by (metis \<open>m * b = c - 12\<close> add_divide_eq_if_simps(4) diff_eq_diff_eq divide_eq_0_iff double_zero_sym eq_iff_diff_eq_0 h1 mult.commute mult_2 one_add_one semiring_norm(3) semiring_norm(5))
  thus ?thesis by simp
qed