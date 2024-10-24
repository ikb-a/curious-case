lemma congruence_manipulation:
  fixes k :: nat
  assumes "k mod m = a" "k mod n = b"
  shows "\<exists>q. k = m * q + a"
proof -
  obtain q where "k = m * q + a" using assms(1) by (metis div_mult_mod_eq mult.commute) 
  thus ?thesis by auto
qed