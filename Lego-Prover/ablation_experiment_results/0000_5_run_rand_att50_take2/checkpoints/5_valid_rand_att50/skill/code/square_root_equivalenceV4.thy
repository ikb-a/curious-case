lemma square_root_equivalence:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a ^ 2 = a" using assms(1) by (simp add: sqrt_def)
  then have "sqrt b ^ 2 = b" using assms(2) by (simp add: sqrt_def)
  then have "sqrt a ^ 2 = sqrt b ^ 2" using assms(3) by (simp add: power2_eq_square)
  thus ?thesis using assms(1) assms(2) by (simp add: power2_eq_square)
qed