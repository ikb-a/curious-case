lemma rearrangement_of_equation:
  fixes a b c d :: real
  assumes "a + c = b + d"
  shows "a - b = d - c"
proof -
  have "a - b = d - c" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed