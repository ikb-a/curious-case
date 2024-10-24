lemma congruence_mod_6:
  fixes N :: nat
  assumes "N mod 6 = 3"
  shows "\<exists>m. N = 6 * m + 3"
proof -
  have "N = 6 * (N div 6) + (N mod 6)" 
    by auto
  then have "N = 6 * (N div 6) + 3" 
    using assms by simp
  then obtain m where "m = N div 6" 
    by auto
  thus "\<exists>m. N = 6 * m + 3" 
    by (metis \<open>N = 6 * (N div 6) + 3\<close>)
qed