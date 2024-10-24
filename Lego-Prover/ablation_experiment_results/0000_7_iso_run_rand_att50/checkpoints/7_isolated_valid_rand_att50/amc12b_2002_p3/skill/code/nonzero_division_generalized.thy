lemma nonzero_division_generalized:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "\<forall>c. (b / a) * a = b"
proof -
  have "(b / a) * a = b" using nonzero_division[OF assms] by auto
  then show ?thesis by (metis)
qed