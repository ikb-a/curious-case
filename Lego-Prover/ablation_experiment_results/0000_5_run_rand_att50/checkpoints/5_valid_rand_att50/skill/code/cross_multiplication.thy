lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0" "a / b = c / d"
  shows "a * d = b * c"
proof -
  have "a / b = c / d" using assms(3) by simp
  then have "a * d = c * b" by (metis assms(1) assms(2) frac_eq_eq)
  then show ?thesis by simp
qed