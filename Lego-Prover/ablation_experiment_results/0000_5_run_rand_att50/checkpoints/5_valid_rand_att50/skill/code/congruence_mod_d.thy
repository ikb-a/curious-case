lemma congruence_mod_d:
  fixes N d :: nat
  assumes "d > 0" and "N mod d = r" and "r < d"
  shows "\<exists>m. N = d * m + r"
proof -
  have "N = d * (N div d) + (N mod d)" 
    by auto
  then have "N = d * (N div d) + r" 
    using assms(2) by simp
  then obtain m where "m = N div d" 
    by auto
  thus "\<exists>m. N = d * m + r" 
    by (metis \<open>N = d * (N div d) + r\<close>)
qed