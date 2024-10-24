theorem algebra_nvarlineareq:
  fixes x e :: "complex list"
  assumes h0: "\<forall>i. x ! i + e ! i = 7"
    and h1: "\<forall>i. 2 * x ! i + e ! i = 3"
  shows "\<forall>i. e ! i = 11 \<and> x ! i = -4"
proof -
  have eq1: "\<forall>i. e ! i = 7 - x ! i" using h0 by (auto simp: field_simps)
  have eq2: "\<forall>i. 2 * x ! i + (7 - x ! i) = 3" using h1 eq1 by auto
  have eq3: "\<forall>i. x ! i + 7 = 3" using eq2 by auto
  then have "\<forall>i. x ! i = 3 - 7" by (metis add.commute add_diff_cancel_right' diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "\<forall>i. x ! i = -4" by simp
  from eq1 have "\<forall>i. e ! i = 7 - (-4)" by (metis \<open>\<forall>i. x ! i = - 4\<close>)
  then have "\<forall>i. e ! i = 7 + 4" by simp
  then show "\<forall>i. e ! i = 11 \<and> x ! i = -4" by (metis \<open>\<forall>i. x ! i = - 4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed