lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  from assms have "a^2 = a * a" by sos
  also have "... = b * b" using assms by simp
  finally show ?thesis by sos
qed