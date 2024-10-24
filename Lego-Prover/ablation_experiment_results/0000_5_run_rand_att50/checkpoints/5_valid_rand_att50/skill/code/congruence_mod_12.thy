lemma congruence_mod_12:
  fixes N :: nat
  assumes "N mod 12 = 5"
  shows "\<exists>k. N = 12 * k + 5"
proof -
  have "N = 12 * (N div 12) + (N mod 12)"
    by auto
  then have "N = 12 * (N div 12) + 5"
    using assms by simp
  then obtain k where "k = N div 12"
    by auto
  thus "\<exists>k. N = 12 * k + 5"
    by (metis \<open>N = 12 * (N div 12) + 5\<close>)
qed