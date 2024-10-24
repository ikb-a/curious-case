theorem linear_equation_single_solution:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = (12 - 3 * a) / 2"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have sub: "3 * 4 + 2 * b = 12" using h1 eq by simp
  have simplified: "12 + 2 * b = 12" by (smt (verit) sub)
  have isolate: "2 * b = 12 - 12" using simplified by simp
  have solution: "b = (12 - 3 * a) / 2" using h1 by (smt (verit) add_right_imp_eq divide_eq_0_iff eq_iff_diff_eq_0 h0 isolate simplified)
  show ?thesis using solution by simp
qed