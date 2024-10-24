lemma product_prime_general_3d:
  fixes p a b c :: nat
  assumes "a > 0" "b > 0" "c > 0" "a * b * c = p" "prime p"
  shows "a = 1 \<or> b = 1 \<or> c = 1"
proof -
  have "p = a * b * c" using assms(4) by simp
  then have "1 < a * b * c" using assms(1) assms(2) assms(3) by (metis Totient.of_nat_eq_1_iff assms(4) assms(5) less_one linorder_neqE_nat mult.commute mult.left_commute mult_1 mult_eq_0_iff mult_pos_pos nat_mult_eq_1_iff prime_prime_factor zero_less_iff_neq_zero)
  moreover have "p > 1" using assms(5) by (metis prime_gt_1_nat)
  ultimately show ?thesis
  proof (cases "a > 1")
    case True
    then have "b * c = p div a" using assms(4) by auto
    then show ?thesis by (metis assms(4) assms(5) mult.commute mult_delta_right nat_1_eq_mult_iff prime_product)
  next
    case False
    then show ?thesis by (metis assms(1) linorder_neqE_nat nat_dvd_not_less one_dvd)
  qed
qed