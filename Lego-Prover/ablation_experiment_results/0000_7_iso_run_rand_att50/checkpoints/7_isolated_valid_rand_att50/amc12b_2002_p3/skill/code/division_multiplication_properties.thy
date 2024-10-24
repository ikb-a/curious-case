lemma division_multiplication_properties:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "(\<forall>b. (b / a) * a = b) \<and> (\<forall>c. (c / a) * a = c) \<and> (\<forall>b c. ((b + c) / a) * a = b + c)"
proof -
  have division_eq: "\<forall>x. (x / a) * a = x" using assms by (metis field_simps)
  then show ?thesis 
    by auto
qed