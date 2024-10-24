lemma range_of_values:
  fixes N :: nat and a b c :: nat
  assumes "N = a + b * k" "N < c" "b > 0"  
  shows "k < (c - a) / b"
proof -
  from assms(1) have "k = (N - a) / b" 
    by (smt (verit) assms(3) diff_add_inverse nat_less_le nonzero_mult_div_cancel_left nonzero_mult_div_cancel_left of_nat_eq_0_iff of_nat_mult) 
  have "N < c" using assms(2) by assumption
  then have "a + b * k < c" using assms(1) by simp
  then have "b * k < c - a" by (simp add: field_simps)
  then show ?thesis using `b > 0` by (metis less_imp_of_nat_less mult.commute mult_imp_less_div_pos of_nat_0_less_iff of_nat_mult)
qed