lemma square_eq_extended:
  fixes a b c d :: real
  assumes "a = b" "c = d"
  shows "a^2 + c^2 = b^2 + d^2"
proof -
  have "a^2 + c^2 = b^2 + c^2" using assms(1) by simp
  also have "... = b^2 + d^2" using assms(2) by simp
  finally show ?thesis .
qed