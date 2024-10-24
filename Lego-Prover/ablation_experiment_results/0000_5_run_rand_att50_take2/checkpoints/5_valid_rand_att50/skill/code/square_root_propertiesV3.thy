lemma square_root_properties:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "sqrt a = sqrt b"
proof -
  from assms(1) have "sqrt a = sqrt a" by simp
  thus ?thesis by (simp add: assms(1))
qed