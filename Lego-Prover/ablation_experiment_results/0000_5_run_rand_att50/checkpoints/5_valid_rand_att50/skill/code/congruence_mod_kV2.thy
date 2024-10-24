lemma congruence_mod_k:
  fixes N k :: nat
  assumes "k > 0" "N mod k = r" "r < k"
  shows "\<exists>m. N = k * m + r"
proof -
  have "N = k * (N div k) + (N mod k)" 
    by auto
  then obtain m where "m = N div k" 
    by auto
  thus "\<exists>m. N = k * m + r" 
    using assms(2) by (metis add.commute assms(3) le_refl le_trans mod_eq_nat2E mod_less mod_less_eq_dividend verit_comp_simplify1(3))
qed