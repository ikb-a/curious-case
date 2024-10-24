lemma square_eq_extended:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2" 
    and "\<forall> n m. a = n \<Longrightarrow> b = m \<Longrightarrow> a^2 = b^2"
  using assms by auto