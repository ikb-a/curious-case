lemma extended_equality_properties:
  fixes a b c d :: real
  assumes "a + b = c" "b + d = c"
  shows "a = d"
proof -
  have "a + b = b + d" using assms by simp
  hence "a = d" using assms(1) by auto
  thus ?thesis .
qed