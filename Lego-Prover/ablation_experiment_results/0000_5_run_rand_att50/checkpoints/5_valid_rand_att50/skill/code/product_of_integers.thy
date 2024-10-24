lemma product_of_integers:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<and> b = p \<or> a = p \<and> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  then show "a = 1 \<and> b = p \<or> a = p \<and> b = 1"
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms prime_def by (metis less_irrefl_nat prime_product)
    thus ?thesis by (metis assms(1) mult.right_neutral)
  next
    case False
    then have "b > 1" using assms(1) by (metis \<open>1 < a * b\<close> less_one mult.right_neutral mult_is_0 not_less_iff_gr_or_eq not_one_less_zero)
    then have "a = 1" using assms prime_def by (metis False less_one linorder_neqE_nat mult_eq_0_iff not_prime_0)
    thus ?thesis by (metis assms(1) comm_monoid_mult_class.mult_1)
  qed
qed