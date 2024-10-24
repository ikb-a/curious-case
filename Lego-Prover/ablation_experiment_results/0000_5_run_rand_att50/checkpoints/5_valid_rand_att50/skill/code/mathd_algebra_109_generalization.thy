theorem mathd_algebra_109_generalization:
  fixes a b c d :: real
  assumes h0: "3*a + 2*b + c + d = 12"
    and h1: "a = 4"
    and h2: "c + d = 0"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b + c + d = 12" using h0 by simp
  have "3 * 4 + 2 * b + c + d = 12" using h1 eq by simp
  have "12 + c + d = 12" by (metis add.commute add_cancel_left_right add_scale_eq_noteq group_cancel.add1 h2 mult_delta_right real_add_minus_iff semiring_norm(3) semiring_norm(5) zero_neq_numeral)
  have "c + d = 0" using h2 by simp
  thus "b = 0" using `12 + c + d = 12` by (smt (verit) h0 h1)
qed