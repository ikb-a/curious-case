lemma nonzero_division:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall>b. (b / a) * a = b"
  using assms by (metis field_simps)