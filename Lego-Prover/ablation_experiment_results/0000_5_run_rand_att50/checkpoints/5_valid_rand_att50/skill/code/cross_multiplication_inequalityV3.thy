theorem cross_multiplication_inequality:
  fixes a b c d :: real
  assumes "c \<noteq> 0" "d \<noteq> 0" 
      and "a / c = b / d"
  shows "a * d = b * c"
proof -
  have "a / c = b / d" using assms(3) by simp
  then have "a * d = b * (c / d * d)" using assms(1) by (simp add: field_simps)
  then show ?thesis by (metis assms(1) assms(2) assms(3) frac_eq_eq)
qed