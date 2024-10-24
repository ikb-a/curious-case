lemma generalized_congruence_solution:
  fixes k a b m n :: nat
  assumes "k mod m = a" "k mod n = b"
  shows "\<exists>p q. k = m * p + a \<and> k = n * q + b"
proof -
  obtain p where p_def: "k = m * p + a" using assms(1) by (metis div_mult_mod_eq mult.commute)
  obtain q where q_def: "k = n * q + b" using assms(2) by (metis div_mult_mod_eq mult.commute)
  show ?thesis using p_def q_def by blast
qed