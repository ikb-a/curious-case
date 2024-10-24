lemma product_is_prime:
  fixes n m :: nat
  assumes "n > 0" "m > 0" "prime (n * m)"
  shows "n = 1 \<or> m = 1"
proof -
  have "n * m > 1" using assms(1) assms(2) by (metis Primes.prime_nat_def assms(3) mult.commute prime_nat_iff)
  {
    assume "n > 1"
    then have "n * m > 1 * m" using assms(2) by auto
    then have "n * m > m" using assms(2) by simp
    then have "m = 1" using assms(3) by (metis dvd_triv_right prime_nat_not_dvd)
  }
  moreover {
    assume "m > 1"
    then have "n * m > n * 1" using assms(1) by auto
    then have "n * m > n" using assms(1) by simp
    then have "n = 1" using assms(3) by (metis dvd_triv_left prime_nat_not_dvd)
  }
  ultimately show "n = 1 \<or> m = 1" by (metis \<open>1 < n * m\<close> less_one mult_is_0 nat_neq_iff not_one_less_zero)
qed