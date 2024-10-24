lemma square_eq_extended:
  fixes a b c :: real
  assumes "a = b" "c = 0"
  shows "a^2 - c^2 = b^2 - c^2"
proof -
  have "a^2 = b^2" using assms by (simp)
  thus ?thesis by simp
qed