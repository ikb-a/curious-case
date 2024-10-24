lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "a / b = c / d \<longleftrightarrow> a * d = b * c"
proof -
  {
    assume "a / b = c / d"
    then have "a * d = c * b" by (metis assms(1) assms(2) frac_eq_eq)
  }
  moreover
  {
    assume "a * d = b * c"
    then have "a / b = c / d" using assms by (simp add: field_simps)
  }
  ultimately show ?thesis by auto
qed