theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
    and h2 : "c = 5"
  shows "b = 0" 
    and "3*a + c = 17"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  thus "b = 0" using `2 * b = 0` by simp
  show "3 * a + c = 17" using h1 h2
    by (simp add: `a = 4` `c = 5` field_simps)
qed