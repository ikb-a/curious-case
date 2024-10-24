lemma square_root_equivalence:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a = sqrt b" using assms(3) by auto
  then have "sqrt a ^ 2 = sqrt b ^ 2" by (simp add: power2_eq_square)
  then show ?thesis using assms(1) assms(2) by auto
qed