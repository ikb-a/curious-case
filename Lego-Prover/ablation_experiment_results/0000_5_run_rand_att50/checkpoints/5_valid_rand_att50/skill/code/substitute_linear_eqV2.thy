lemma substitute_linear_eq:
  fixes a b :: real
  assumes "3 * a + 2 * b = 12"
  shows "b = (12 - 3 * a) / 2"
proof -
  have "2 * b = 12 - 3 * a"
    using assms by simp
  then show ?thesis
    by (simp add: divide_simps)
qed