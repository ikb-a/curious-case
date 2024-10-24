lemma congruence_mod_m:
  fixes N a b :: nat
  assumes "a > 0" "N mod a = b"
  shows "\<exists>m. N = a * m + b"
proof -
  have "N = a * (N div a) + (N mod a)" 
    by auto
  then have "N = a * (N div a) + b" 
    using assms by simp
  then obtain m where "m = N div a" 
    by auto
  thus "\<exists>m. N = a * m + b" 
    by (metis \<open>N = a * (N div a) + b\<close>)
qed