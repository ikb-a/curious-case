lemma inequality_bounds:
  fixes n :: nat
  assumes "n >= 7" "n <= 7"
  shows "n = 7"
proof -
  have "n >= 7" using assms(1) by simp
  have "n <= 7" using assms(2) by simp
  hence "n = 7" using Nat.le_eq_less_or_eq by (metis assms(1) nle_le)
  thus ?thesis by simp
qed