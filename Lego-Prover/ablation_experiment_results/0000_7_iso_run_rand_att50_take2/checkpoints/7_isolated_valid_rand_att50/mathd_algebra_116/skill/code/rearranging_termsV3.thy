lemma rearranging_terms:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  have "b + c = a" using assms by simp
  hence "b = a - c" by (simp add: algebra_simps)
  thus ?thesis .
qed