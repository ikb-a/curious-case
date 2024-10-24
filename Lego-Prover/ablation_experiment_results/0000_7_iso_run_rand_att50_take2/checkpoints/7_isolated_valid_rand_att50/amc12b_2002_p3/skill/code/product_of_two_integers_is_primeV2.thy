lemma product_of_two_integers_is_prime:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms(3) by (metis prime_gt_1_nat)
  have "a > 1 \<or> b > 1"
  proof (cases "a = 1")
    case True
    then show ?thesis by (metis \<open>1 < a * b\<close> assms(2) less_numeral_extra(3) less_numeral_extra(4) less_one nat_mult_eq_1_iff nat_neq_iff)
  next
    case False
    then have "b = 1 \<or> b > 1" using assms(2) by auto
    thus ?thesis by (metis assms(3) mult.right_neutral prime_gt_1_nat)
  qed
  then show ?thesis
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms(3) by (metis less_not_refl3 prime_product)
    then show ?thesis by (metis True)
  next
    case False
    then have "a = 1" using assms(1) by auto
    then show ?thesis by (metis \<open>1 < a * b\<close> assms(2) less_one mult_is_0)
  qed
qed