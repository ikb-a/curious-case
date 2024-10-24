theorem linear_system_solution:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = (12 - 3 * a) / 2"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  then have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  then show ?thesis using `2 * b = 0` by (metis add.comm_neutral diff_self div_0 eq_divide_eq h0 one_add_one zero_neq_numeral)
qed