lemma square_root_relation_parametrized:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt(x) = sqrt(y) \<longleftrightarrow> x = y"
  using square_root_relation_generalized[of x y] by simp