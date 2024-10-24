theorem mathd_algebra_generalized:
  fixes a b d :: real
  assumes h0 : "d*(3*a + 2*b) = 12 * d"
  and h1 : "a = 4"
  and h2 : "d > 0"
  shows "b = 0"
proof -
  have eq: "d*(3*a + 2*b) = 12 * d" using h0 by simp
  have sub: "d*(3 * 4 + 2 * b) = 12 * d" using h1 eq by simp
  have simplified: "12 * d + 2 * d * b = 12 * d" by (metis ab_semigroup_mult_class.mult_ac(1) add.commute add_right_cancel h0 h1 is_num_normalize(1) left_add_twice mult.commute mult_2 mult_2_right numeral_times_numeral ring_class.ring_distribs(1) semiring_norm(12) semiring_norm(14))
  have isolate: "2 * d * b = 12 * d - 12 * d" using simplified by simp
  have solution: "b = 0" using isolate by (metis add.commute add_0_iff diff_add_cancel diff_self double_zero_sym h2 less_iff_diff_less_0 mult_2 no_zero_divisors verit_comp_simplify1(1))
  show ?thesis using solution by simp
qed