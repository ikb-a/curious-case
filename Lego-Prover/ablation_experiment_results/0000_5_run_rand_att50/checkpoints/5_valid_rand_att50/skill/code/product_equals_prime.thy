lemma product_equals_prime:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "p > 1" using assms(2) by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "a * b = a * 1" 
      using assms(2) by (metis assms(1) bigger_prime dvdI dvd_mult_unit_iff' dvd_triv_right gcd_nat.strict_trans2 is_unit_power_iff mult.comm_neutral mult_left_cancel nat_mult_1 nat_mult_eq_cancel1 power_inject_exp power_one power_one_right prime_nat_iff zero_neq_one)
    hence "b = 1" by (metis assms(1) assms(2) mult_delta_left mult_left_cancel not_prime_0)
  }
  {
    assume "b > 1"
    then have "a * b = 1 * b" 
      using assms(2) by (metis assms(1) bigger_prime comm_monoid_mult_class.mult_1 dvd_mult_unit_iff' dvd_triv_right gcd_nat.strict_trans2 is_unit_power_iff mult_left_cancel nat_mult_eq_cancel1 power_inject_exp power_one power_one_right prime_nat_iff zero_neq_one)
    hence "a = 1" by (metis assms(1) assms(2) mult_delta_right mult_right_cancel not_prime_0)
  }
  thus "a = 1 \<or> b = 1" by (metis Primes.prime_nat_def assms(1) assms(2) prime_product)
qed