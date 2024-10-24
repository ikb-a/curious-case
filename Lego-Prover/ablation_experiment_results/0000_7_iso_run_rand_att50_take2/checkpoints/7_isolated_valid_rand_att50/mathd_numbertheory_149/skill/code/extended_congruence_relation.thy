lemma extended_congruence_relation:
  fixes k m n a b :: nat
  assumes "k mod m = a" "k mod n = b" "m > 0" "n > 0"
  shows "\<exists>q1 q2. k = m * q1 + a \<and> k = n * q2 + b"
proof -
  obtain q1 where "k = m * q1 + a" using assms(1) by (metis div_mult_mod_eq mult.commute)
  obtain q2 where "k = n * q2 + b" using assms(2) by (metis mod_div_decomp mult.commute)
  thus ?thesis by (metis \<open>\<And>thesis. (\<And>q1. k = m * q1 + a \<Longrightarrow> thesis) \<Longrightarrow> thesis\<close> \<open>\<And>thesis. (\<And>q2. k = n * q2 + b \<Longrightarrow> thesis) \<Longrightarrow> thesis\<close>)
qed