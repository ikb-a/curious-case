lemma square_root_eq_general:
  fixes a b :: real
  assumes "a = b" "a >= 0" "b >= 0"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b" using assms(1) by simp
  thus ?thesis using assms(2) assms(3) by simp
qed