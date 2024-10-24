lemma product_prime_condition:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "\<exists>p. (a = 1 \<and> b = p) \<or> (a = p \<and> b = 1)"
proof -
  have "a * b > 1" using assms(3) by (metis prime_gt_1_nat)
  have "a > 1 \<or> b > 1"
  proof (cases "a = 1")
    case True
    then have "b > 1" using assms(3) by (metis \<open>1 < a * b\<close> assms(2) less_numeral_extra(4) nat_1_eq_mult_iff nat_dvd_not_less nat_neq_iff one_dvd)
    then show ?thesis by auto
  next
    case False
    then have "a > 1" using assms(1) by auto
    then have "b = 1 \<or> b > 1" by (metis \<open>1 < a * b\<close> less_one mult_is_0 nat_neq_iff not_one_less_zero)
    thus ?thesis by (metis \<open>1 < a\<close>)
  qed
  then show ?thesis
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms(3) by (metis less_not_refl3 prime_product)
    then show ?thesis by (metis True)
  next
    case False
    then have "a = 1" using assms(1) by auto
    then have "b > 1" using assms(3) by (metis False \<open>1 < a \<or> 1 < b\<close>)
    then show ?thesis by (metis \<open>a = 1\<close>)
  qed
qed