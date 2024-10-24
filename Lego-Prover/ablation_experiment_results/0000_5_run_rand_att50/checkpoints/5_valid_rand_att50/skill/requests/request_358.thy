lemma achieve_minimum:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = 1 \<longleftrightarrow> (x, y) = (0, 0)"
  by (auto simp: algebra_simps)