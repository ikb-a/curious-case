lemma scalar_product_dimension:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall>n. a * (1 / a) = 1" 
  using nonzero_times_inverse assms by auto