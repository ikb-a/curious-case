lemma mod_congruence_addition:
  fixes n m a b :: nat
  assumes "n mod m = a" "n mod m = b"
  shows "a = b"
proof -
  have "n mod m = a" by (simp add: assms(1))
  then have "n mod m = b" by (simp add: assms(2))
  thus ?thesis by (metis assms(1))
qed