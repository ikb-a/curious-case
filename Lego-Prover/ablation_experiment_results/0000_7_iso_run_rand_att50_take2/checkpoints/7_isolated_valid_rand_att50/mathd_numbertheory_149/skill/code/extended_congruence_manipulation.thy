lemma extended_congruence_manipulation:
  fixes k :: nat
  assumes "k mod m = a" "k mod n = b"
  shows "\<exists>q. k = m * q + a" 
  and "\<exists>r. k = n * r + b"
proof -
  from assms(1) have "k mod m = a" by simp
  then have "k = m * (k div m) + (k mod m)"
    by auto
  then show "\<exists>q. k = m * q + a" 
    by (metis assms(1) div_mult_mod_eq mult.commute)
  from assms(2) have "k mod n = b" by simp
  then have "k = n * (k div n) + (k mod n)"
    by auto
  then show "\<exists>r. k = n * r + b" 
    by (metis assms(2) div_mult_mod_eq mult.commute)
qed