lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a \<ge> 0" and "b \<ge> 0"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  have "b^2 = b * b" by (simp add: power2_eq_square)
  from assms(1) have "b = a" by simp
  then have "b^2 = a^2" by (simp add: power2_eq_square)
  thus "a^2 = b^2" by (simp add: power2_eq_square)
qed