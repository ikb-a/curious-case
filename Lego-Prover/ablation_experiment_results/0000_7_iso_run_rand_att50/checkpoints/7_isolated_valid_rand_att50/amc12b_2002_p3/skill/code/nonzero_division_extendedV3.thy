lemma nonzero_division_extended:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall>b c. (b / a) * a = b \<and> (c / a) * a = c"
proof -
  have "b / a * a = b" using assms by (metis field_simps)
  have "c / a * a = c" using assms by (metis field_simps)
  then show ?thesis by (smt (verit) assms divide_eq_eq)
qed