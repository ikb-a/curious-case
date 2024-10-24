lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b"
  shows "a + c < b + c"
proof -
  have "b - a > 0" using assms by (simp add: field_simps)
  hence "b + c - (a + c) > 0" by (simp)
  thus "a + c < b + c" by (simp add: field_simps)
qed