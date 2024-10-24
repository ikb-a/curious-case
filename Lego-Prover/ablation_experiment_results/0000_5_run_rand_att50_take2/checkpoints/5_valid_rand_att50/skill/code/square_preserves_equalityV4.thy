lemma square_preserves_equality:
  fixes a b :: real
  assumes "a = b" "a >= 0" "b >= 0"
  shows "a^2 = b^2"
proof -
  obtain c where "a = c" "b = c" using assms(1) by auto
  then show "a^2 = b^2" by (simp add: power2_eq_square)
qed