theorem algebra_2varlineareq_extended_dimensions:
  fixes x e :: "complex list"
  assumes h0: "\<forall>i. (x ! i) + (e ! i) = 7" and h1: "\<forall>i. 2 * (x ! i) + (e ! i) = 3"
  shows "\<forall>i. (e ! i) = 11 \<and> (x ! i) = (-4) \<and> (e ! i) + (x ! i) = 7"
proof -
  let ?xi = "x ! 0" and ?ei = "e ! 0"
  have "7 = ?xi + ?ei" using assms(1) by simp
  have "3 = 2 * ?xi + ?ei" using assms(2) by simp
  have e_eq: "?ei = 7 - ?xi" by (metis \<open>7 = x ! 0 + e ! 0\<close> add_diff_cancel_left' semiring_norm(5))
  have eq2_substituted: "2 * ?xi + (7 - ?xi) = 3" using e_eq by (metis \<open>3 = 2 * x ! 0 + e ! 0\<close>)
  have simplified_eq: "?xi + 7 = 3" using eq2_substituted by simp
  have xi_value: "?xi = -4" using simplified_eq by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  have ei_value: "?ei = 7 - (-4)" using e_eq xi_value by simp
  show ?thesis using xi_value ei_value by (smt (verit) algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended h0 h1)
qed