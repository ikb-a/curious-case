lemma positive_integer_product:
  fixes a b :: nat
  assumes "a * b = c" and "c > 0"
  shows "a > 0 \<and> b > 0"
proof -
  have "c > 0" using assms(2) by simp
  have "a * b > 0" using assms(1) by (metis assms(2))
  then show "a > 0 \<and> b > 0"
  proof (cases "a = 0")
    case True
    then have "b > 0" using assms(1) by (metis \<open>0 < a * b\<close> less_numeral_extra(3) mult_eq_0_iff zero_less_iff_neq_zero)
    then show ?thesis by (metis True assms(1) assms(2) mult_zero_left not_less_zero)
  next
    case False
    then have "a > 0" using assms(1) by auto
    then show ?thesis by (metis \<open>0 < a * b\<close> less_numeral_extra(3) mult_eq_0_iff zero_less_iff_neq_zero)
  qed
qed