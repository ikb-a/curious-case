lemma square_preserves_equality:
  fixes a b :: real
  assumes "a = b" "a >= 0" "b >= 0"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by sos
  also have "... = b * b" using assms(1) by simp
  also have "... = b^2" by sos
  finally show "a^2 = b^2" .
qed