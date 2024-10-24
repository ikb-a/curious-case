lemma congruence_reformulation:
  fixes k m n a b :: nat
  assumes "k mod m = a" "k mod n = b"
  shows "k = m * (k div m) + a"
proof -
  have "k = m * (k div m) + (k mod m)" by auto
  thus ?thesis using assms(1) by auto
qed