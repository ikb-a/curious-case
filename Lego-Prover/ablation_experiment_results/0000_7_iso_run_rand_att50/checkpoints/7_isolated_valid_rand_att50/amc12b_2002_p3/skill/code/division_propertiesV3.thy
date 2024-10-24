lemma division_properties:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall>b c. (b / a) * a = b \<and> (c / a) * a = c \<and> (b + c) / a * a = b + c"
proof -
  have "b / a * a = b" using nonzero_division[OF assms] by auto
  have "c / a * a = c" using nonzero_division[OF assms] by auto
  have "(b + c) / a * a = (b + c)" 
    using assms by (metis (no_types, lifting) field_simps)
  then show ?thesis by (smt (verit) assms nonzero_division)
qed