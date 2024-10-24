lemma cross_multiply_and_rearrange:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0" "a / b = c / d"
  shows "a * d = b * c"
proof -
  have "a / b = c / d" using assms by auto
  then have "a * d = c * b" by (metis assms(1) assms(2) frac_eq_eq)
  thus ?thesis by simp
qed