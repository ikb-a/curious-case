lemma congruence_mod_n:
  fixes N :: nat and n :: nat
  assumes "N mod n = r" and "r < n"
  shows "\<exists>m. N = n * m + r"
proof -
  have "N = n * (N div n) + (N mod n)" 
    by auto
  then have "N = n * (N div n) + r" 
    using assms by simp
  then obtain m where "m = N div n" 
    by auto
  thus "\<exists>m. N = n * m + r" 
    by (metis \<open>N = n * (N div n) + r\<close>)
qed