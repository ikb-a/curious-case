lemma nonzero_division_multiple:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall>b c. (b / a) * a = b \<and> (c / a) * a = c"
  using nonzero_division_general[OF assms] by auto