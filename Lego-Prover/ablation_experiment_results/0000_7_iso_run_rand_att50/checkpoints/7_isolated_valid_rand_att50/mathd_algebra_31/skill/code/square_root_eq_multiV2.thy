lemma square_root_eq_multi:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b \<and> sqrt (a^2) = sqrt (b^2) \<and> (\<forall>c. c = a \<or> c = b \<longrightarrow> sqrt c = sqrt c)"
  using square_root_eq assms by auto