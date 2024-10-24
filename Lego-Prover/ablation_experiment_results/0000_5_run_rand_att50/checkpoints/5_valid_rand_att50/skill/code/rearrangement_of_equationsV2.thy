lemma rearrangement_of_equations:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  from assms have "a = c - b" 
    by (simp add: field_simps)
  thus ?thesis by simp
qed