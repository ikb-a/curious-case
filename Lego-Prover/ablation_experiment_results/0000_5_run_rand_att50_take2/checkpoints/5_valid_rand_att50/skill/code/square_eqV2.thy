lemma square_eq:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "a^2 = b * b" using assms by sos
  thus ?thesis by (simp add: assms)
qed