lemma product_prime_extended:
  fixes a b p q :: nat
  assumes "a > 0" "b > 0" "p > 0" "q > 0" "a * b = p" "p * q = r" "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "r = (a * b) * q" using assms(5) by (metis assms(6))
  then have "1 < a * b * q" using assms(1) assms(2) assms(4) by (metis assms(5) assms(6) assms(7) less_numeral_extra(3) less_one mult.commute mult.left_commute mult_1 mult_eq_0_iff nat_1_eq_mult_iff nat_less_le nat_mult_1_right not_prime_0 not_prime_1 prime_product verit_comp_simplify1(3))
  moreover have "p * q > 1" using assms(7) by (metis Primes.prime_nat_def assms(4) assms(6) dvd_imp_le gr_zeroI less_numeral_extra(3) mult_eq_0_iff nat_1_eq_mult_iff nat_less_le not_prime_0 not_prime_1 one_dvd)
  ultimately have "a = 1 \<or> b = 1" using prime_def by (metis assms(1) assms(2) assms(5) assms(7) product_prime_simple)
  thus ?thesis by auto
qed