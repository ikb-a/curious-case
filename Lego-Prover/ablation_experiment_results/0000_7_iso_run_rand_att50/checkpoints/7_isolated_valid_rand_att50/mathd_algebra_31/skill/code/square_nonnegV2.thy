lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" "0 \<le> a" "0 \<le> b"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by sos
  also have "... = b * b" using assms(1) by simp
  finally show "a^2 = b^2" by sos
qed