lemma congruence_mod_8:
  fixes N :: nat
  assumes "N mod 8 = 5"
  shows "\<exists>k. N = 8 * k + 5"
proof -
  have "N = 8 * (N div 8) + (N mod 8)" 
    by auto
  then have "N = 8 * (N div 8) + 5" 
    using assms by simp
  then show ?thesis 
    by auto
qed