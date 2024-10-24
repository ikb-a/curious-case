lemma factorization_property:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "(xy - 2)(x - y) = 0 \<Longrightarrow> xy = 2"