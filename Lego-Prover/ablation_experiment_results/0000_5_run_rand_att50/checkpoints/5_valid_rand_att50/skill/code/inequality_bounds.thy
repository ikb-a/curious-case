lemma inequality_bounds:
  fixes n :: nat
  assumes "n >= 7" "n <= 7"
  shows "n = 7"
proof -
  from assms(1) have "n >= 7" by simp
  from assms(2) have "n <= 7" by simp
  hence "n = 7" using le_antisym by (metis assms(1) nle_le)
  thus ?thesis by simp
qed