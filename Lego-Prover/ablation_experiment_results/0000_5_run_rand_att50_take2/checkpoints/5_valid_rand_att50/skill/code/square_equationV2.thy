lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by sos
  also have "... = b * b" using assms by (simp add: assms)
  finally show "a^2 = b^2" by sos
qed