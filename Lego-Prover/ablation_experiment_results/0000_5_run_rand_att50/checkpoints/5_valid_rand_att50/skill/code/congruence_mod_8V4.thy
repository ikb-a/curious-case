lemma congruence_mod_8:
  fixes N :: nat
  assumes "N mod 8 = 5"
  shows "\<exists>k. N = 8 * k + 5"
proof -
  have "N = 8 * (N div 8) + (N mod 8)" 
    by auto
  then have "N = 8 * (N div 8) + 5" 
    using assms by simp
  then obtain k where "k = N div 8" 
    by auto
  thus "\<exists>k. N = 8 * k + 5" 
    by (metis \<open>N = 8 * (N div 8) + 5\<close>)
qed