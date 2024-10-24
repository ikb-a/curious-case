lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "a^2 = b * b" by (metis assms power2_eq_square)
  also have "... = b^2" by sos
  finally show "a^2 = b^2" by simp
qed