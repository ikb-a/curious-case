lemma product_prime:
  fixes a b p :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<and> b = p \<or> a = p \<and> b = 1"
proof -
  have "p > 1" using assms(2) by (metis prime_gt_1_nat)
  have "a * b = p" using assms(1) by simp
  have "a > 1 \<and> b > 1 \<longrightarrow> a * b > 1"
    by (metis \<open>1 < p\<close> assms(1) less_eq_nat.simps(2) mult_pos_pos)
  hence "\<not> (a > 1 \<and> b > 1)" using `p > 1` 
    by (metis Primes.prime_nat_def assms(1) assms(2) less_irrefl_nat less_numeral_extra(4) prime_product)
  show "a = 1 \<and> b = p \<or> a = p \<and> b = 1"
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms(2)
      by (smt (verit) assms(1) less_numeral_extra(4) prime_product)
    then show ?thesis by (metis One_nat_def add_scale_eq_noteq assms(1) mult.commute n_not_Suc_n nat_mult_1)
  next
    case False
    then have "a = 1" using assms(1)
      by (smt (verit) \<open>1 < p\<close> assms(2) mult.comm_neutral prime_product)
    then show ?thesis by (metis One_nat_def add_scale_eq_noteq assms(1) mult.commute mult.right_neutral n_not_Suc_n)
  qed
qed