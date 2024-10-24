lemma prime_even_product:
  fixes a b :: nat
  assumes "a * b = 2" and "a > 0" and "b > 0"
  shows "a = 1 \<and> b = 2 \<or> a = 2 \<and> b = 1"
proof -
  have "a * b = 2" using assms(1) by auto
  have "a > 0" using assms(2) by auto
  have "b > 0" using assms(3) by auto
  then have "a = 1 \<or> a = 2" using `a * b = 2` by (metis Suc_1 Suc_lessI assms(2) less_antisym less_zeroE linorder_neqE_nat mult_cancel_right mult_delta_right mult_left_cancel mult_numeral_1 n_not_Suc_n nat_mult_1_right nat_mult_eq_1_iff nat_mult_eq_cancel1 nat_mult_less_cancel1 numeral_1_eq_Suc_0 one_eq_numeral_iff)
  then show ?thesis
  proof (cases "a = 1")
    case True
    then have "b = 2" using `a * b = 2` by auto
    then show ?thesis by (metis True)
  next
    case False
    then have "a = 2" using `a * b = 2` by (metis \<open>a = 1 \<or> a = 2\<close>)
    then have "b = 1" using `a * b = 2` by auto
    then show ?thesis by (metis \<open>a = 2\<close>)
  qed
qed