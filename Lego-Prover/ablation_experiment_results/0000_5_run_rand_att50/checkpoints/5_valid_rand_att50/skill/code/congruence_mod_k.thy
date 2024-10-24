lemma congruence_mod_k:
  fixes N k :: nat
  assumes "k > 0" "N mod k = r" "r < k"
  shows "\<exists>m. N = k * m + r"
proof -
  have "N = k * (N div k) + (N mod k)" 
    by auto
  then have "N = k * (N div k) + r" 
    using assms(2) by simp
  then obtain m where "m = N div k" 
    by auto
  thus "\<exists>m. N = k * m + r" 
    by (metis \<open>N = k * (N div k) + r\<close>)
qed