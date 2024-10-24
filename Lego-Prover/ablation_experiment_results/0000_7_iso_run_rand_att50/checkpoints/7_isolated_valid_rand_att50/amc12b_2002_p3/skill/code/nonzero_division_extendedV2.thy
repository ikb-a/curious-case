lemma nonzero_division_extended:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall>b c. (b / a) * a = b \<and> (c / a) * a = c"
proof -
  have "b / a * a = b" using nonzero_division[OF assms] by auto
  have "c / a * a = c" using nonzero_division[OF assms] by auto
  then show ?thesis by (smt (verit) assms nonzero_division)
qed