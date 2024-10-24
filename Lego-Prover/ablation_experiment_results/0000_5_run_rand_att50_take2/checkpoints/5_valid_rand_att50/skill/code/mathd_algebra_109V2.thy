theorem mathd_algebra_109:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  then have "3 * 4 + 2 * b = 12" using h1 by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  then have "2 * b = 12 - 12" by simp
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right diff_minus_eq_add semiring_norm(5) verit_minus_simplify(3))
  then show "b = 0" by (simp add: field_simps)
qed