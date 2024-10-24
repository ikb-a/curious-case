lemma rearrangement_of_equations:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  from assms have "c - b = a + b - b" by (simp add: field_simps)
  then show "a = c - b" by (simp add: field_simps)
qed