lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" "0 \<le> a" "0 \<le> b"
  shows "a^2 = b^2"
proof -
  from assms(1) have "b = a" by simp
  hence "a^2 = b^2" by (simp add: power2_eq_square)
  thus ?thesis by simp
qed