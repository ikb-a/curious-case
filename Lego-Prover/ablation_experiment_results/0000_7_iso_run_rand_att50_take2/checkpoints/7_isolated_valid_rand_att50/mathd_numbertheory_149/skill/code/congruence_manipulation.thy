lemma congruence_manipulation:
  fixes k :: nat
  assumes "k mod m = a" "k mod n = b"
  shows "\<exists>q. k = m * q + a"
proof -
  from assms(1) have "k mod m = a" by simp
  then have "k = m * (k div m) + (k mod m)"
    by auto
  then show "\<exists>q. k = m * q + a" 
    by (metis assms(1) div_mult_mod_eq mult.commute)
qed