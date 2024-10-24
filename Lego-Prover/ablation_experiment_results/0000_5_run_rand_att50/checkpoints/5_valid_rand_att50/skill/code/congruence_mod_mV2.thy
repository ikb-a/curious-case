lemma congruence_mod_m:
  fixes N m :: nat
  assumes "m > 0" "N mod m = r"
  shows "\<exists>k. N = m * k + r"
proof -
  have "N = m * (N div m) + (N mod m)" 
    by auto
  then have "N = m * (N div m) + r" 
    using assms by simp
  then obtain k where "k = N div m" 
    by auto
  thus "\<exists>k. N = m * k + r" 
    by (metis \<open>N = m * (N div m) + r\<close>)
qed