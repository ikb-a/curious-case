lemma product_equals_two:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 \<and> b = 2 \<or> a = 2 \<and> b = 1"
proof -
  have "a * b = 2" using assms by simp
  then show ?thesis
  proof (cases "a = 0")
    case True
    then have "2 = 0" using `a * b = 2` by auto
    thus ?thesis by (metis zero_neq_numeral)
  next
    case False
    then have "a > 0" by simp
    then have "b > 0" using `a * b = 2` by (metis mult_is_0 zero_less_iff_neq_zero zero_neq_numeral)
    have "a \<le> 2" using `a * b = 2` by (metis dual_order.trans le_zero_eq less_eq_nat.simps(1) less_one linorder_le_less_linear linorder_linear mult.comm_neutral mult_0_right mult_le_mono2 order.strict_iff_order self_le_ge2_pow verit_comp_simplify1(1) zero_power)
    then show ?thesis
    proof (cases "a = 1")
      case True
      then have "b = 2" using `a * b = 2` by auto
      thus ?thesis by (metis True)
    next
      case False
      then have "a > 1" by (metis `a > 0` less_numeral_extra(3) less_one linorder_neq_iff)
      then have "b < 2" using `a * b = 2` by (smt (verit) \<open>0 < a\<close> add_less_mono add_mult_distrib2 dual_order.strict_iff_not mult.comm_neutral mult_left_less_imp_less nat_1_add_1)
      then have "b = 1" using `b > 0` by auto
      then show ?thesis by (metis `a * b = 2` `b = 1` nat_mult_1_right)
    qed
  qed
qed