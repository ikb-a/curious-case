lemma algebraic_isolation:
  fixes x y z :: real
  assumes "x + y = z"
  shows "x = z - y"
proof -
  have "z - y + y = z" by (simp add: assms)
  then show "x = z - y" using assms by (simp add: algebra_simps)
qed