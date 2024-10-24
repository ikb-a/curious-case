lemma square_expansion_combined:
  fixes x y z :: real
  shows "(x + y - z)^2 = (x - z + y)^2"
proof -
  have "(x + y - z)^2 = (x - z + y)^2" by (simp add: algebra_simps)
  thus ?thesis by auto
qed