lemma rearrangement_of_equations:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  from assms have "c = a + b" by simp
  have "c - b = a + b - b" by (simp add: `c = a + b`)
  then have "c - b = a" by (simp)
  thus "a = c - b" by simp
qed