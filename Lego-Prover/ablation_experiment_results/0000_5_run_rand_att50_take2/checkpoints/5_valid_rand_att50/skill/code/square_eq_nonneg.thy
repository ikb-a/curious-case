lemma square_eq_nonneg:
  fixes a b :: real
  assumes "a^2 = b^2"
  shows "a = b \<or> a = -b"
proof -
  have "a^2 - b^2 = 0" using assms by simp
  then have "(a - b) * (a + b) = 0" by sos
  thus ?thesis by auto
qed