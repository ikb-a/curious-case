lemma integer_solution:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 \<and> b = 2 \<or> a = 2 \<and> b = 1"
proof -
  have "a * b = 2" using assms by simp
  show ?thesis
  proof (cases "a = 0")
    case True
    then have "2 = 0" using `a * b = 2` by auto
    thus ?thesis by (metis zero_neq_numeral)
  next
    case False
    then have "a > 0" by simp
    have "b > 0" using `a * b = 2` by (metis mult_is_0 zero_less_iff_neq_zero zero_neq_numeral)
    show ?thesis
    proof (cases "a = 1")
      case True
      then have "b = 2" using `a * b = 2` by simp
      thus ?thesis by (simp add: True)
    next
      case False
      then have "a > 1" by (metis `a > 0` less_numeral_extra(3) less_one linorder_neq_iff)
      have "b < 2" using `a * b = 2` by (metis One_nat_def \<open>0 < b\<close> \<open>1 < a\<close> n_less_m_mult_n)
      have "b = 1" using `b > 0` `b < 2` by auto
      then show ?thesis by (metis Suc_1 assms nat_mult_1_right)
    qed
  qed
qed