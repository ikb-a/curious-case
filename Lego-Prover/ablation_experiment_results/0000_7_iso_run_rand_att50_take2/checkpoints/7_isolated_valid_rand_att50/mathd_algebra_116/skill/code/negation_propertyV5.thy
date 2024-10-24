lemma negation_property:
  fixes x :: real
  shows "a * -x = - (a * x)"
proof -
  have "-(a * x) = -1 * (a * x)" by simp
  also have "... = -1 * a * x" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: algebra_simps)
qed