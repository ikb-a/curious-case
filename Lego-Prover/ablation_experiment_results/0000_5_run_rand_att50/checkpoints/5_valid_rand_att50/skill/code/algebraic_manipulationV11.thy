lemma algebraic_manipulation:
  fixes x y z :: nat
  assumes "x + y = z"
  shows "y = z - x"
proof -
  have "z - x = (x + y) - x" using assms by simp
  then have "z - x = y + (x - x)" by (simp add: algebra_simps)
  then show "y = z - x" by (simp add: algebra_simps)
qed