lemma rearranging_terms:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  have "a - c = (b + c) - c" using assms by simp
  also have "... = b + (c - c)" by (simp add: algebra_simps)
  also have "... = b + 0" by simp
  finally show ?thesis by simp
qed