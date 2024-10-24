lemma congruence_manipulation:
  fixes k m n a b :: nat
  assumes "k mod m = a" "k mod n = b"
  shows "\<exists>q. k = m * q + a"
proof -
  have "k = m * (k div m) + (k mod m)"
    by auto
  then show "\<exists>q. k = m * q + a" 
    using assms(1) by auto
qed