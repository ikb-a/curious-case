lemma rearrangement_of_equations:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  have "c - b = (a + b) - b" using assms by simp
  then have "c - b = a + (b - b)" by (simp add: algebra_simps)
  then show "a = c - b" by (simp add: algebra_simps)
qed