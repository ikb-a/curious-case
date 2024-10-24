lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "a^2 = b^2"
proof -
  from assms(1) have "b = a" by simp
  then show "a^2 = b^2"
  proof -
    have "a^2 = a * a" by (simp add: power2_eq_square)
    also have "... = b * b" using `b = a` by (simp add: power2_eq_square)
    finally show ?thesis by sos
  qed
qed