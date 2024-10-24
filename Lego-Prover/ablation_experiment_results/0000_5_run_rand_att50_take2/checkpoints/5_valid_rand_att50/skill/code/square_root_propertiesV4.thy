lemma square_root_properties:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b" using assms(1) by simp
  thus ?thesis by simp
qed