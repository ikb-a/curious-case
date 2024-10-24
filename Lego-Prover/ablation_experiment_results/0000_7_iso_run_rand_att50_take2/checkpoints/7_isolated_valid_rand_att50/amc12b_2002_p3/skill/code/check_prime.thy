lemma check_prime:
  fixes n :: nat
  assumes "n = 3"
  shows "prime (n^2 - 3*n + 2)"
proof -
  have "n^2 - 3*n + 2 = (n - 1) * (n - 2)"
    by (smt (verit) One_nat_def Suc_1 Suc_diff_le Suc_nat_number_of_add add.commute add_diff_cancel_left' assms diff_add_0 diff_numeral_Suc diff_self_eq_0 le_numeral_extra(4) mult_numeral_1_right numerals(1) plus_1_eq_Suc power2_eq_square pred_numeral_simps(3) semiring_norm(2))
  then have "n^2 - 3*n + 2 = (3 - 1) * (3 - 2)" 
    using assms by auto
  then have "n^2 - 3*n + 2 = 2 * 1" by auto
  thus "prime (n^2 - 3*n + 2)" 
    by (metis Suc_1 add.commute add_2_eq_Suc assms diff_self_eq_0 mult.commute nat_power_eq_Suc_0_iff power2_eq_square power_one two_is_prime_nat)
qed