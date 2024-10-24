theorem mathd_algebra_111:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b + c = 12"
    and h1 : "a = 4" "b = 0"
  shows "c = 0"
proof -
  have eq: "3 * a + 2 * b + c = 12" using h0 by simp
  have "3 * 4 + 2 * 0 + c = 12" using h1 eq by simp
  have "12 + c = 12" by (smt (verit) `3 * 4 + 2 * 0 + c = 12`)
  hence "c = 0" by (metis add_cancel_right_right)
  show ?thesis using `c = 0` by simp
qed