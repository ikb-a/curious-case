lemma express_congruence:
  fixes n m a :: nat
  assumes "n mod m = a"
  shows "\<exists>k. n = m * k + a"
proof -
  from assms have "n mod m = a" by simp
  then have "n = m * (n div m) + (n mod m)"
    by auto
  then show "\<exists>k. n = m * k + a" 
    by (metis assms div_mult_mod_eq mult.commute)
qed