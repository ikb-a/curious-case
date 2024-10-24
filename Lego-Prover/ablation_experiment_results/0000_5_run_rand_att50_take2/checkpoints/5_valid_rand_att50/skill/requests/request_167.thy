lemma inequality_bounds:
  fixes a b :: real
  assumes "a < b"
  shows "a < x \<and> x < b \<longrightarrow> a < x < b"