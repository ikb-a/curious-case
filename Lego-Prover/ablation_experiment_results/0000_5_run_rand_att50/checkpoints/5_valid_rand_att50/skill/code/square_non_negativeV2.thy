lemma square_non_negative:
  fixes a b :: real
  assumes "a = b" "a >= 0" "b >= 0"
  shows "a^2 = b^2"
proof -
  from assms(1) have "b = a" by simp
  then have "b^2 = a^2" by (simp add: power2_eq_square)
  thus "a^2 = b^2" by simp
qed